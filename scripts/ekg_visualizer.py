#!/usr/bin/env python3
"""
ekg_visualizer.py — Real-time EKG waveform display over JTAG UART.

Reads 12-bit ADC samples streamed from the FPGA via the USB-Blaster JTAG
connection and renders a scrolling waveform with BPM detection.

Usage:
    pip install -r requirements.txt
    python ekg_visualizer.py

The FPGA must be programmed with a design that includes jtag_streamer.vhd
(alt_jtag_atlantic instance 0).
"""

import sys
import os
import glob
import ctypes
import time
import collections
import numpy as np
import signal
import queue

from PyQt6.QtWidgets import (
    QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QLabel, QFrame, QSizePolicy, QDialog, QComboBox, QPushButton, QCheckBox, QFormLayout, QSlider
)
from PyQt6.QtCore import QThread, pyqtSignal, QTimer, Qt
from PyQt6.QtGui import QFont, QColor, QPalette, QFontDatabase
import pyqtgraph as pg


# =============================================================================
# Theme
# =============================================================================
COLORS = {
    "bg":         "#000000",             # Pitch black background
    "panel":      "#161b22",
    "border":     "#30363d",
    "grid":       "#22252A",             # Subtle grid lines
    "trace":      "#00FF9D",             # Vibrant medical green for the ECG trace
    "text":       "#c9d1d9",
    "text_dim":   "#8b949e",
    "accent":     "#F43F5E",             # Rose red for the heart icon
    "danger":     "#f85149",
    "success":    "#10B981",             # Emerald green for connected status
    "bpm_color":  "#F43F5E",
}

SAMPLE_RATE_HZ = 360
ADC_BITS = 12
ADC_MAX = (1 << ADC_BITS) - 1


# =============================================================================
# JTAG Atlantic DLL Wrapper
# =============================================================================
class JTAGAtlantic:
    """Thin ctypes wrapper around Quartus jtag_atlantic.dll."""

    # C++ mangled export names (MSVC x64)
    _MANGLED = {
        "open":  "?jtagatlantic_open@@YAPEAUJTAGATLANTIC@@PEBDHH0@Z",
        "read":  "?jtagatlantic_read@@YAHPEAUJTAGATLANTIC@@PEADI@Z",
        "write": "?jtagatlantic_write@@YAHPEAUJTAGATLANTIC@@PEBDI@Z",
        "close": "?jtagatlantic_close@@YAXPEAUJTAGATLANTIC@@@Z",
        "flush": "?jtagatlantic_flush@@YAHPEAUJTAGATLANTIC@@@Z",
        "is_setup_done": "?jtagatlantic_is_setup_done@@YA_NPEAUJTAGATLANTIC@@@Z",
    }

    def __init__(self):
        dll_path = self._find_dll()
        # Add the DLL's directory to PATH so dependent DLLs are found
        dll_dir = os.path.dirname(dll_path)
        os.environ["PATH"] = dll_dir + os.pathsep + os.environ.get("PATH", "")
        self.dll = ctypes.CDLL(dll_path)
        self._setup_prototypes()
        self.handle = None

    @staticmethod
    def _find_dll() -> str:
        """Locate jtag_atlantic.dll from Quartus installation."""
        # Check environment variable first
        quartus_root = os.environ.get("QUARTUS_ROOTDIR", "")
        if quartus_root:
            candidate = os.path.join(quartus_root, "bin64", "jtag_atlantic.dll")
            if os.path.isfile(candidate):
                return candidate

        # Search common install locations
        search_patterns = [
            r"C:\intelFPGA_lite\*\quartus\bin64\jtag_atlantic.dll",
            r"C:\intelFPGA\*\quartus\bin64\jtag_atlantic.dll",
            r"C:\altera\*\quartus\bin64\jtag_atlantic.dll",
            r"C:\altera_lite\*\quartus\bin64\jtag_atlantic.dll",
        ]
        for pattern in search_patterns:
            matches = sorted(glob.glob(pattern))
            if matches:
                return matches[-1]  # Latest version

        raise FileNotFoundError(
            "Could not find jtag_atlantic.dll.\n"
            "Set the QUARTUS_ROOTDIR environment variable to your Quartus "
            "installation directory (e.g. C:\\intelFPGA_lite\\25.1std\\quartus)."
        )

    def _get_func(self, name):
        """Resolve a function by its mangled C++ name."""
        mangled = self._MANGLED[name]
        return getattr(self.dll, mangled)

    def _setup_prototypes(self):
        """Define C function signatures for the DLL."""
        fn = self._get_func("open")
        fn.restype = ctypes.c_void_p
        fn.argtypes = [ctypes.c_char_p, ctypes.c_int, ctypes.c_int, ctypes.c_char_p]

        fn = self._get_func("read")
        fn.restype = ctypes.c_int
        fn.argtypes = [ctypes.c_void_p, ctypes.c_char_p, ctypes.c_uint]

        fn = self._get_func("close")
        fn.restype = None
        fn.argtypes = [ctypes.c_void_p]

        fn = self._get_func("flush")
        fn.restype = ctypes.c_int
        fn.argtypes = [ctypes.c_void_p]

        fn = self._get_func("is_setup_done")
        fn.restype = ctypes.c_bool
        fn.argtypes = [ctypes.c_void_p]

    def open(self, cable=None, device=-1, instance=0):
        cable_arg = cable.encode("utf-8") if cable else None
        self.handle = self._get_func("open")(
            cable_arg, device, instance, b"ekg_visualizer"
        )
        if not self.handle:
            raise ConnectionError(
                "Failed to open JTAG Atlantic connection.\n"
                "Make sure the FPGA is programmed and the USB-Blaster is connected."
            )

    def read(self, max_bytes=512) -> bytes:
        buf = ctypes.create_string_buffer(max_bytes)

        n = self._get_func("read")(self.handle, buf, max_bytes)
        if n < 0:
            raise ConnectionError("JTAG Atlantic read error")
        return buf.raw[:n]

    def close(self):
        if self.handle:
            self._get_func("close")(self.handle)
            self.handle = None


# =============================================================================
# JTAG Reader Thread
# =============================================================================
class JTAGReaderThread(QThread):
    """Background thread that reads from the JTAG UART and puts decoded samples in a queue."""

    connection_status = pyqtSignal(bool, str)  # (connected, message)

    def __init__(self, data_queue, parent=None):
        super().__init__(parent)
        self._running = True
        self.data_queue = data_queue

    def stop(self):
        self._running = False
        self.wait(2000)

    def run(self):
        print("[JTAG] Thread starting")
        self.jtag = JTAGAtlantic()
        try:
            print("[JTAG] Opening connection...")
            self.connection_status.emit(False, "Connecting…")
            self.jtag.open(instance=0)
            print("[JTAG] Connection opened successfully")
            self.connection_status.emit(True, "Connected")
        except (FileNotFoundError, ConnectionError) as e:
            print(f"[JTAG] Exception: {e}")
            self.connection_status.emit(False, str(e))
            return
        
        print("[JTAG] Starting read loop")

        sync_byte = None

        while self._running:
            try:
                data = self.jtag.read(512)
            except ConnectionError:
                self.connection_status.emit(False, "Connection lost")
                break

            if not data:
                time.sleep(0.005)  # 5 ms idle sleep to avoid busy-wait
                continue

            samples = []
            for b in data:
                if b & 0x80:
                    # Sync byte: MSB = 1
                    sync_byte = b
                elif sync_byte is not None:
                    # Data byte: MSB = 0
                    sample = ((sync_byte & 0x7F) << 5) | (b & 0x1F)
                    samples.append(sample)
                    sync_byte = None
                # else: orphan data byte, discard (resync)

            if samples:
                self.data_queue.put(samples)

        self.jtag.close()
        self.connection_status.emit(False, "Disconnected")


# =============================================================================
# BPM Calculator
# =============================================================================
class BPMCalculator:
    """Simple threshold-based peak detector for heart rate estimation."""

    def __init__(self, sample_rate=360):
        self.sample_rate = sample_rate
        # Minimum interval between beats: 200 ms (= max 300 BPM)
        self.refractory_samples = int(sample_rate * 0.200)
        self.since_last_peak = 0
        self.peak_intervals = collections.deque(maxlen=8)
        self.running_max = 0.0
        self.running_min = float(ADC_MAX)
        self.bpm = 0.0
        self.beat_detected = False  # True for one update cycle after a beat

    def process(self, samples: list):
        """Feed new samples and return current BPM estimate."""
        self.beat_detected = False

        for s in samples:
            # Exponential moving average for dynamic range tracking
            self.running_max = max(self.running_max * 0.999, s)
            self.running_min = min(self.running_min * 1.001, s)

            amplitude = self.running_max - self.running_min
            threshold = self.running_min + amplitude * 0.65

            self.since_last_peak += 1

            if s > threshold and self.since_last_peak > self.refractory_samples:
                if amplitude > 50:  # Ignore noise floor
                    self.peak_intervals.append(self.since_last_peak)
                    self.since_last_peak = 0
                    self.beat_detected = True

        if len(self.peak_intervals) >= 2:
            avg_interval = np.mean(list(self.peak_intervals))
            self.bpm = (self.sample_rate / avg_interval) * 60.0
        else:
            self.bpm = 0.0

        return self.bpm


class SettingsDialog(QDialog):
    def __init__(self, parent=None, current_settings=None):
        super().__init__(parent)
        self.setWindowTitle("Settings")
        self.setFixedSize(320, 260)
        self.setStyleSheet(f"background-color: {COLORS['panel']}; color: {COLORS['text']};")

        self.current_settings = current_settings or {}
        layout = QFormLayout(self)
        
        # Sweep Speed Slider (0.1s to 2.0s)
        self.sweep_slider = QSlider(Qt.Orientation.Horizontal)
        self.sweep_slider.setMinimum(1)   # 0.1s
        self.sweep_slider.setMaximum(20)  # 2.0s
        current_val = int(self.current_settings.get('display_seconds', 2.0) * 10)
        self.sweep_slider.setValue(current_val)
        self.sweep_slider.setTickPosition(QSlider.TickPosition.TicksBelow)
        self.sweep_slider.setTickInterval(1)
        self.sweep_slider.setStyleSheet(f"""
            QSlider::groove:horizontal {{
                border: 1px solid {COLORS['border']};
                height: 8px;
                background: {COLORS['bg']};
                border-radius: 4px;
            }}
            QSlider::handle:horizontal {{
                background: {COLORS['trace']};
                border: 1px solid {COLORS['trace']};
                width: 16px;
                margin: -4px 0;
                border-radius: 8px;
            }}
        """)
        
        self.lbl_sweep = QLabel(f"{self.sweep_slider.value() / 10.0:.1f}s")
        self.lbl_sweep.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        self.lbl_sweep.setFixedWidth(40)
        
        sweep_layout = QHBoxLayout()
        sweep_layout.addWidget(self.sweep_slider)
        sweep_layout.addWidget(self.lbl_sweep)
        
        self.sweep_slider.valueChanged.connect(lambda v: self.lbl_sweep.setText(f"{v / 10.0:.1f}s"))
        
        layout.addRow("Sweep Speed:", sweep_layout)

        # Sensitivity (Y-Range)
        self.cb_sens = QComboBox()
        self.cb_sens.setStyleSheet(f"background-color: {COLORS['bg']}; color: {COLORS['text']};")
        self.cb_sens.addItem("1.0 mV", 1.0)
        self.cb_sens.addItem("2.0 mV", 2.0)
        self.cb_sens.addItem("3.0 mV", 3.0)
        self.cb_sens.addItem("5.0 mV", 5.0)
        idx = self.cb_sens.findData(self.current_settings.get("y_range", 3.0))
        if idx >= 0:
            self.cb_sens.setCurrentIndex(idx)
        layout.addRow("Sensitivity:", self.cb_sens)

        # Grid
        self.cb_grid = QCheckBox("Show Grid")
        self.cb_grid.setChecked(self.current_settings.get("grid_visible", True))
        layout.addRow("", self.cb_grid)

        # Trace Color
        self.cb_color = QComboBox()
        self.cb_color.setStyleSheet(f"background-color: {COLORS['bg']}; color: {COLORS['text']};")
        self.cb_color.addItem("Medical Green", "#00FF9D")
        self.cb_color.addItem("Classic Green", "#00d4aa")
        self.cb_color.addItem("Cyan", "#00ffff")
        self.cb_color.addItem("White", "#ffffff")
        idx = self.cb_color.findData(self.current_settings.get("trace_color", COLORS["trace"]))
        if idx >= 0:
            self.cb_color.setCurrentIndex(idx)
        layout.addRow("Trace Color:", self.cb_color)
        
        btn_layout = QHBoxLayout()
        btn_layout.addStretch()
        btn_apply = QPushButton("Apply")
        btn_apply.setStyleSheet(f"background-color: {COLORS['trace']}; color: #000; font-weight: bold; padding: 4px 16px;")
        btn_apply.clicked.connect(self.accept)
        btn_layout.addWidget(btn_apply)
        layout.addRow("", btn_layout)

    def get_settings(self):
        return {
            "display_seconds": self.sweep_slider.value() / 10.0,
            "y_range": self.cb_sens.currentData(),
            "grid_visible": self.cb_grid.isChecked(),
            "trace_color": self.cb_color.currentData()
        }

# =============================================================================
# Main Window
# =============================================================================
class EKGVisualizer(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("FPGA-EKG Monitor")
        self.setMinimumSize(960, 520)
        self.resize(1200, 640)

        # Settings state
        self.display_seconds = 2.0
        self.y_range = 3.0
        self.grid_visible = True
        self.trace_color = COLORS["trace"]

        # --- Data buffers ---
        # Buffer length must match the visible window, otherwise the newest
        # samples sit beyond the X range and the plot shows stale data.
        buf_len = int(SAMPLE_RATE_HZ * self.display_seconds)
        self.sample_buffer = collections.deque(maxlen=buf_len)
        # Pre-fill so the plot starts full-width
        for _ in range(buf_len):
            self.sample_buffer.append(ADC_MAX // 2)
        self.total_samples = 0
        self.bpm_calc = BPMCalculator(SAMPLE_RATE_HZ)
        self.data_queue = queue.Queue()

        # --- Build UI ---
        self._apply_theme()
        self._build_ui()

        # Timer to drain the queue
        self.drain_timer = QTimer()
        self.drain_timer.timeout.connect(self._drain_queue)
        self.drain_timer.start(16)  # ~60 Hz

        # --- JTAG reader thread ---
        self.reader = JTAGReaderThread(self.data_queue, self)
        self.reader.connection_status.connect(self._on_connection_status)
        self.reader.start()

        # --- Plot refresh timer (30 FPS) ---
        self.plot_timer = QTimer()
        self.plot_timer.timeout.connect(self._update_plot)
        self.plot_timer.start(33)

        # --- BPM flash timer ---
        self.bpm_flash_timer = QTimer()
        self.bpm_flash_timer.setSingleShot(True)
        self.bpm_flash_timer.timeout.connect(self._end_bpm_flash)

    # -------------------------------------------------------------------------
    # Theme
    # -------------------------------------------------------------------------
    def _apply_theme(self):
        self.setStyleSheet(f"""
            QMainWindow {{
                background-color: {COLORS['bg']};
            }}
            QWidget {{
                background-color: {COLORS['bg']};
                color: {COLORS['text']};
            }}
            QLabel {{
                background: transparent;
            }}
            QFrame#headerFrame {{
                background-color: {COLORS['panel']};
                border-bottom: 1px solid {COLORS['border']};
                padding: 8px 16px;
            }}
            QFrame#statusFrame {{
                background-color: {COLORS['panel']};
                border-top: 1px solid {COLORS['border']};
                padding: 4px 16px;
            }}
        """)

    # -------------------------------------------------------------------------
    # UI Construction
    # -------------------------------------------------------------------------
    def _build_ui(self):
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.setSpacing(0)

        # --- Header ---
        header = QFrame()
        header.setObjectName("headerFrame")
        header.setFixedHeight(64)
        h_layout = QHBoxLayout(header)
        h_layout.setContentsMargins(20, 0, 20, 0)

        title = QLabel("FPGA-EKG Monitor")
        title.setFont(QFont("Segoe UI", 16, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {COLORS['text']};")
        h_layout.addWidget(title)

        h_layout.addStretch()

        btn_settings = QPushButton("⚙ Settings")
        btn_settings.setStyleSheet(f"""
            QPushButton {{
                background-color: {COLORS['bg']};
                color: {COLORS['text']};
                border: 1px solid {COLORS['border']};
                border-radius: 4px;
                padding: 4px 12px;
                font-weight: bold;
            }}
            QPushButton:hover {{
                background-color: {COLORS['border']};
            }}
        """)
        btn_settings.clicked.connect(self.open_settings)
        h_layout.addWidget(btn_settings)

        h_layout.addSpacing(16)

        # Connection indicator
        self.conn_dot = QLabel("●")
        self.conn_dot.setFont(QFont("Segoe UI", 12))
        self.conn_dot.setStyleSheet(f"color: {COLORS['danger']};")
        h_layout.addWidget(self.conn_dot)

        self.conn_label = QLabel("Disconnected")
        self.conn_label.setFont(QFont("Segoe UI", 11))
        self.conn_label.setStyleSheet(f"color: {COLORS['text_dim']};")
        h_layout.addWidget(self.conn_label)

        h_layout.addSpacing(32)

        # BPM display
        self.heart_icon = QLabel("♥")
        self.heart_icon.setFont(QFont("Segoe UI", 20))
        self.heart_icon.setStyleSheet(f"color: {COLORS['bpm_color']};")
        h_layout.addWidget(self.heart_icon)

        self.bpm_label = QLabel("-- BPM")
        self.bpm_label.setFont(QFont("Segoe UI", 22, QFont.Weight.Bold))
        self.bpm_label.setStyleSheet(f"color: {COLORS['bpm_color']};")
        h_layout.addWidget(self.bpm_label)

        layout.addWidget(header)

        # --- Waveform Plot ---
        pg.setConfigOptions(antialias=True, background=COLORS["bg"])
        self.plot_widget = pg.PlotWidget()
        self.plot_widget.setBackground(COLORS["bg"])
        self.plot_widget.showGrid(x=self.grid_visible, y=self.grid_visible, alpha=0.15)
        self.plot_widget.setYRange(2048 - (self.y_range * 500), 2048 + (self.y_range * 500), padding=0.05)
        self.plot_widget.setXRange(0, int(SAMPLE_RATE_HZ * self.display_seconds), padding=0)
        self.plot_widget.hideButtons()
        self.plot_widget.setMouseEnabled(x=False, y=False)
        self.plot_widget.setMenuEnabled(False)

        # Style the axes
        for axis_name in ("left", "bottom"):
            axis = self.plot_widget.getAxis(axis_name)
            axis.setPen(pg.mkPen(color=COLORS["border"], width=1))
            axis.setTextPen(pg.mkPen(color=COLORS["text_dim"]))
            axis.setStyle(tickLength=-8)

        # X axis: time in seconds
        x_axis = self.plot_widget.getAxis("bottom")
        x_ticks = [(i * SAMPLE_RATE_HZ, f"{i}s") for i in range(int(self.display_seconds) + 1)]
        x_axis.setTicks([x_ticks])
        x_axis.setLabel("Time")

        # Y axis: ADC counts
        y_axis = self.plot_widget.getAxis("left")
        y_axis.setLabel("ADC Value")

        # Waveform trace
        trace_pen = pg.mkPen(color=self.trace_color, width=2)
        self.trace_curve = self.plot_widget.plot([], [], pen=trace_pen)

        layout.addWidget(self.plot_widget, stretch=1)

        # --- Status Bar ---
        status = QFrame()
        status.setObjectName("statusFrame")
        status.setFixedHeight(36)
        s_layout = QHBoxLayout(status)
        s_layout.setContentsMargins(20, 0, 20, 0)

        self.status_rate = QLabel(f"Sample Rate: {SAMPLE_RATE_HZ} Hz")
        self.status_rate.setFont(QFont("Segoe UI", 10))
        self.status_rate.setStyleSheet(f"color: {COLORS['text_dim']};")
        s_layout.addWidget(self.status_rate)

        s_layout.addStretch()

        self.status_res = QLabel(f"Resolution: {ADC_BITS}-bit")
        self.status_res.setFont(QFont("Segoe UI", 10))
        self.status_res.setStyleSheet(f"color: {COLORS['text_dim']};")
        s_layout.addWidget(self.status_res)

        s_layout.addStretch()

        self.status_count = QLabel("Samples: 0")
        self.status_count.setFont(QFont("Segoe UI", 10))
        self.status_count.setStyleSheet(f"color: {COLORS['text_dim']};")
        s_layout.addWidget(self.status_count)

        layout.addWidget(status)

    # -------------------------------------------------------------------------
    # Slots
    # -------------------------------------------------------------------------
    def open_settings(self):
        current = {
            "display_seconds": self.display_seconds,
            "y_range": self.y_range,
            "grid_visible": self.grid_visible,
            "trace_color": self.trace_color
        }
        dlg = SettingsDialog(self, current)
        if dlg.exec():
            self.apply_settings(dlg.get_settings())

    def apply_settings(self, settings):
        self.display_seconds = settings["display_seconds"]
        self.y_range = settings["y_range"]
        self.grid_visible = settings["grid_visible"]
        self.trace_color = settings["trace_color"]

        self.plot_widget.showGrid(x=self.grid_visible, y=self.grid_visible, alpha=0.15)
        self.plot_widget.setYRange(2048 - (self.y_range * 500), 2048 + (self.y_range * 500), padding=0.05)
        
        new_samples = int(SAMPLE_RATE_HZ * self.display_seconds)
        self.plot_widget.setXRange(0, new_samples, padding=0)
        
        x_axis = self.plot_widget.getAxis("bottom")
        x_ticks = [(i * SAMPLE_RATE_HZ, f"{i}s") for i in range(int(self.display_seconds) + 1)]
        x_axis.setTicks([x_ticks])
        
        trace_pen = pg.mkPen(color=self.trace_color, width=2)
        self.trace_curve.setPen(trace_pen)
        
        if new_samples != self.sample_buffer.maxlen:
            old_data = list(self.sample_buffer)
            self.sample_buffer = collections.deque(maxlen=new_samples)
            if len(old_data) > new_samples:
                self.sample_buffer.extend(old_data[-new_samples:])
            else:
                self.sample_buffer.extend([ADC_MAX // 2] * (new_samples - len(old_data)))
                self.sample_buffer.extend(old_data)

    def _drain_queue(self):
        samples = []
        while True:
            try:
                samples.extend(self.data_queue.get_nowait())
            except queue.Empty:
                break
        
        if samples:
            self._on_samples(samples)

    def _on_samples(self, samples: list):
        """Receive decoded 12-bit samples from the reader thread."""
        self.sample_buffer.extend(samples)
        self.total_samples += len(samples)

        bpm = self.bpm_calc.process(samples)
        if bpm > 0:
            self.bpm_label.setText(f"{int(round(bpm))} BPM")
        else:
            self.bpm_label.setText("-- BPM")

        # Flash the heart on beat detection
        if self.bpm_calc.beat_detected:
            self.heart_icon.setStyleSheet(f"color: #ff4040;")
            self.bpm_flash_timer.start(120)

    def _end_bpm_flash(self):
        self.heart_icon.setStyleSheet(f"color: {COLORS['bpm_color']};")

    def _on_connection_status(self, connected: bool, message: str):
        if connected:
            self.conn_dot.setStyleSheet(f"color: {COLORS['success']};")
            self.conn_label.setText("Connected")
            self.conn_label.setStyleSheet(f"color: {COLORS['success']};")
        else:
            self.conn_dot.setStyleSheet(f"color: {COLORS['danger']};")
            self.conn_label.setText(message)
            self.conn_label.setStyleSheet(f"color: {COLORS['danger']};")

    def _update_plot(self):
        """Refresh the waveform display (~30 FPS)."""
        data = np.array(self.sample_buffer, dtype=np.float32)
        self.trace_curve.setData(data)
        self.status_count.setText(f"Samples: {self.total_samples:,}")

    # -------------------------------------------------------------------------
    # Cleanup
    # -------------------------------------------------------------------------
    def closeEvent(self, event):
        self.plot_timer.stop()
        self.reader.stop()
        event.accept()


# =============================================================================
# Entry Point
# =============================================================================
def main():
    app = QApplication(sys.argv)
    
    window = EKGVisualizer()

    # Handle Ctrl+C gracefully by closing the window (which triggers thread cleanup)
    signal.signal(signal.SIGINT, lambda sig, frame: window.close())

    # Required for Python to actually process the signal (wake up the event loop)
    timer = QTimer()
    timer.start(500)
    timer.timeout.connect(lambda: None)

    app.setStyle("Fusion")

    # Dark palette for the entire app
    palette = QPalette()
    palette.setColor(QPalette.ColorRole.Window, QColor(COLORS["bg"]))
    palette.setColor(QPalette.ColorRole.WindowText, QColor(COLORS["text"]))
    palette.setColor(QPalette.ColorRole.Base, QColor(COLORS["panel"]))
    palette.setColor(QPalette.ColorRole.AlternateBase, QColor(COLORS["bg"]))
    palette.setColor(QPalette.ColorRole.Text, QColor(COLORS["text"]))
    palette.setColor(QPalette.ColorRole.Button, QColor(COLORS["panel"]))
    palette.setColor(QPalette.ColorRole.ButtonText, QColor(COLORS["text"]))
    palette.setColor(QPalette.ColorRole.Highlight, QColor(COLORS["accent"]))
    app.setPalette(palette)

    window.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()
