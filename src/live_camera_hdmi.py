#!/usr/bin/env python3
"""
live_camera_hdmi.py — Flux caméra USB live vers sortie HDMI 720p sur PYNQ-Z1.

Pipeline : C270 (V4L2/MJPG) -> framebuffer DDR -> AXI VDMA (MM2S)
           -> v_axi4s_vid_out -> v_tc_0 (timing 720p) -> rgb2dvi -> HDMI.

Points critiques appris pendant le debug :
  * Ouvrir la caméra par CHEMIN explicite "/dev/video0", pas l'index 0.
  * Forcer le FOURCC MJPG AVANT de fixer la résolution (C270 = 720p en MJPG seul).
  * Toujours reset le VDMA dans le bloc finally (sinon "DMA already running").
  * Le v_tc_0 est standalone (timing figé) -> il n'apparaît PAS dans ip_dict.
"""

import time
import cv2
import numpy as np
from pynq import Overlay, allocate, MMIO

# --- Paramètres ------------------------------------------------------------
BIT = "/home/xilinx/jupyter_notebooks/video/design_1.bit"
WIDTH, HEIGHT, BPP = 1280, 720, 3
STRIDE = WIDTH * BPP                 # octets par ligne (3840)
OFF = 256                           # compensation décalage horizontal (à caler)

# --- Overlay ---------------------------------------------------------------
ol = Overlay(BIT)
print("ip_dict:", list(ol.ip_dict.keys()))   # attendu : axi_vdma_0, v_tpg_0, ps7

# --- Framebuffer DDR -------------------------------------------------------
fb = allocate(shape=(HEIGHT, WIDTH, BPP), dtype=np.uint8)
fb[:] = 0
fb.flush()
addr = fb.physical_address          # device_address si physical_address échoue

# --- Registres VDMA (canal MM2S) -------------------------------------------
vdma = MMIO(ol.ip_dict['axi_vdma_0']['phys_addr'], 0x100)
MM2S_DMACR = 0x00     # control
MM2S_DMASR = 0x04     # status
MM2S_VSIZE = 0x50     # nb lignes (écrire VSIZE déclenche le transfert)
MM2S_HSIZE = 0x54     # octets par ligne
MM2S_STRIDE = 0x58    # stride
MM2S_ADDR = 0x5C      # adresse frame 0 (puis +4, +8 pour frames 1 et 2)


def vdma_start():
    """Reset puis démarre le canal MM2S, 3 slots pointant sur le même buffer."""
    vdma.write(MM2S_DMACR, 0x4)     # reset
    time.sleep(0.2)                 # laisser le VTC se stabiliser
    vdma.write(MM2S_DMACR, 0x1)     # run
    for i in range(3):
        vdma.write(MM2S_ADDR + i * 4, addr)
    vdma.write(MM2S_STRIDE, STRIDE)
    vdma.write(MM2S_HSIZE, WIDTH * BPP)
    vdma.write(MM2S_VSIZE, HEIGHT)


def open_camera():
    """Ouvre la C270 en 720p MJPG. Chemin explicite + warm-up obligatoires."""
    cap = cv2.VideoCapture("/dev/video0", cv2.CAP_V4L2)
    time.sleep(0.5)
    cap.set(cv2.CAP_PROP_FOURCC, cv2.VideoWriter_fourcc(*'MJPG'))
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, WIDTH)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, HEIGHT)
    for _ in range(10):             # jeter les premières frames
        cap.read()
        time.sleep(0.05)
    return cap


def main():
    cap = open_camera()
    vdma_start()

    fail = 0
    t0 = time.time()
    n = 0
    try:
        while True:
            ok, frame = cap.read()
            if not ok or frame is None:
                fail += 1
                if fail % 30 == 0:
                    print("read fail x", fail)
                continue
            fail = 0
            if frame.shape[1] != WIDTH or frame.shape[0] != HEIGHT:
                frame = cv2.resize(frame, (WIDTH, HEIGHT))
            rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
            fb[:] = np.roll(rgb, -OFF, axis=1)   # compense le décalage H
            fb.flush()
            n += 1
            if n % 30 == 0:
                print("fps ~ {:.1f}".format(n / (time.time() - t0)))
    except KeyboardInterrupt:
        pass
    finally:
        cap.release()
        vdma.write(MM2S_DMACR, 0x4)              # reset VDMA en sortie
        print("stopped, DMASR = 0x{:08X}".format(vdma.read(MM2S_DMASR)))


if __name__ == "__main__":
    main()
