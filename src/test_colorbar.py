#!/usr/bin/env python3
"""
test_colorbar.py — Test de validation du chemin HDMI avec une mire statique.

Écrit des barres de couleur dans le framebuffer DDR et les pousse via le VDMA
MM2S vers la sortie HDMI. Si la mire s'affiche, tout le chemin
DDR -> VDMA -> vid_out -> VTC -> rgb2dvi -> HDMI est validé, indépendamment
de la caméra. C'est le premier test à lancer après un nouveau bitstream.
"""

import time
import numpy as np
from pynq import Overlay, allocate, MMIO

BIT = "/home/xilinx/jupyter_notebooks/video/design_1.bit"
WIDTH, HEIGHT, BPP = 1280, 720, 3
STRIDE = WIDTH * BPP

ol = Overlay(BIT)
print("ip_dict:", list(ol.ip_dict.keys()))

fb = allocate(shape=(HEIGHT, WIDTH, BPP), dtype=np.uint8)

# Mire : 8 barres de couleur verticales
bars = [(255, 255, 255), (255, 255, 0), (0, 255, 255), (0, 255, 0),
        (255, 0, 255), (255, 0, 0), (0, 0, 255), (0, 0, 0)]
bw = WIDTH // len(bars)
for i, (r, g, b) in enumerate(bars):
    fb[:, i * bw:(i + 1) * bw, 0] = r
    fb[:, i * bw:(i + 1) * bw, 1] = g
    fb[:, i * bw:(i + 1) * bw, 2] = b
fb.flush()
addr = fb.physical_address

vdma = MMIO(ol.ip_dict['axi_vdma_0']['phys_addr'], 0x100)
MM2S_DMACR, MM2S_DMASR = 0x00, 0x04
MM2S_VSIZE, MM2S_HSIZE = 0x50, 0x54
MM2S_STRIDE, MM2S_ADDR = 0x58, 0x5C

vdma.write(MM2S_DMACR, 0x4)
time.sleep(0.01)
vdma.write(MM2S_DMACR, 0x1)
for i in range(3):
    vdma.write(MM2S_ADDR + i * 4, addr)
vdma.write(MM2S_STRIDE, STRIDE)
vdma.write(MM2S_HSIZE, WIDTH * BPP)
vdma.write(MM2S_VSIZE, HEIGHT)

time.sleep(0.1)
print("DMASR = 0x{:08X}".format(vdma.read(MM2S_DMASR)))
# Attendu : ~0x00010000 (pas de bits d'erreur dans [6:4], Halted=0)
