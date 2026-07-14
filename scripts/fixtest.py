import numpy as np, collections
from bpm import BANDPASS_FIR, ADC_MID
from test_bpm import synth_ecg, FS

class Fixed:
    def __init__(s,fs=360,thr_k=0.25,twave_k=0.5):
        s.fs=fs; s.win=max(1,int(0.150*fs)); s.refractory=int(0.200*fs)
        s.twave_win=int(0.360*fs); s.thr_k=thr_k; s.twave_k=twave_k
        s.warmup=len(BANDPASS_FIR)+int(0.30*fs)
        s.fir=collections.deque([0.0]*len(BANDPASS_FIR),maxlen=len(BANDPASS_FIR))
        s.dh=collections.deque([0.0]*5,maxlen=5)
        s.ib=collections.deque([0.0]*s.win,maxlen=s.win); s.isum=0.0
        s.mwi_hist=collections.deque([0.0]*(int(0.10*fs)+1),maxlen=int(0.10*fs)+1)
        s.prev=0.0; s.rising=False
        s.spki=s.npki=s.thr=0.0; s.init=False; s.boot=[]; s.seen=0
        s.since=s.refractory; s.first=False; s.qrs_slope=1e-9
        s.rr=collections.deque(maxlen=8); s.bpm=0.0; s.beat=False
    def mwi(s,x):
        s.fir.append(float(x)-ADC_MID); y=float(np.dot(BANDPASS_FIR,s.fir))
        s.dh.append(y); h=s.dh; d=(2*h[4]+h[3]-h[1]-2*h[0])/8.0
        sq=d*d; s.isum+=sq-s.ib[0]; s.ib.append(sq); m=s.isum/s.win
        s.mwi_hist.append(m); return m
    def reg(s,rr):
        b=60.0*s.fs/rr
        if b<25 or b>240: return
        s.rr.append(rr)
        if len(s.rr)>=3: s.bpm=60.0*s.fs/float(np.median(s.rr))
    def process(s,samples):
        s.beat=False
        for x in samples:
            s.seen+=1; s.since+=1; m=s.mwi(x)
            if s.since>3*s.fs: s.bpm=0.0; s.rr.clear(); s.first=False
            if not s.init:
                if s.seen>s.warmup: s.boot.append(m)
                if s.seen>=2*s.fs and len(s.boot)>10:
                    ref=float(np.percentile(s.boot,95)); s.spki=0.5*ref; s.npki=0.125*ref
                    s.thr=s.npki+s.thr_k*(s.spki-s.npki); s.init=True; s.boot=[]
                s.prev=m; continue
            if m>s.prev: s.rising=True
            elif s.rising and m<s.prev:
                peak=s.prev
                # slope = rise over last ~100ms up to the peak
                slope=peak-s.mwi_hist[0]
                if peak>s.thr and s.since>s.refractory:
                    is_tw = s.since<s.twave_win and slope<s.twave_k*s.qrs_slope
                    if is_tw:
                        s.npki=0.125*peak+0.875*s.npki
                    else:
                        s.spki=0.125*peak+0.875*s.spki
                        s.qrs_slope=0.125*slope+0.875*s.qrs_slope
                        if s.first: s.reg(s.since)
                        else: s.first=True; s.qrs_slope=slope
                        s.since=0; s.beat=True
                else:
                    s.npki=0.125*peak+0.875*s.npki
                s.thr=s.npki+s.thr_k*(s.spki-s.npki); s.rising=False
            s.prev=m
        return s.bpm

def run(x,**kw):
    c=Fixed(FS,**kw); ch=FS//60
    for i in range(0,len(x),ch): c.process([float(v) for v in x[i:i+ch]])
    return c.bpm

real=np.loadtxt('capture_full.csv')
for thr_k in [0.25,0.35,0.45]:
  for tw in [0.5,0.35]:
    r=run(real,thr_k=thr_k,twave_k=tw)
    syn=[run(np.array(synth_ecg(b,20)),thr_k=thr_k,twave_k=tw) for b in [45,60,75,100,140]]
    emg=[run(np.array(synth_ecg(60,20,emg=True,seed=1)),thr_k=thr_k,twave_k=tw),
         run(np.array(synth_ecg(75,20,emg=True,seed=2)),thr_k=thr_k,twave_k=tw)]
    print('thr_k=%.2f tw=%.2f | REAL=%.0f (want~60) | syn45/60/75/100/140=%s | emg60/75=%s'%(
        thr_k,tw,r,[round(v) for v in syn],[round(v) for v in emg]))
