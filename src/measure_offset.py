#!/usr/bin/env python3
"""
measure_offset.py — Mire graduée pour mesurer le décalage horizontal.

Le pipeline présente un décalage horizontal circulaire fixe (~256-288 px) :
le bord droit de l'image réapparaît à gauche. Cette mire place une graduation
blanche tous les 128 px et un repère ROUGE au pixel 0 du framebuffer.
La distance entre le bord gauche réel de l'écran et la barre rouge = l'offset.
On compense ensuite dans le script live via np.roll(rgb, -OFF, axis=1).
"""

import time
import numpy as np
from pynq import Overlay, allocate, MMIO

BIT = "/home/xilinx/jupyter_notebooks/video/design_1.bit"
WIDTH, HEIGHT, BPP = 1280, 720, 3
STRIDE = WIDTH * BPP

ol = Overlay(BIT)
fb = allocate(shape=(HEIGHT, WIDTH, BPP), dtype=np.uint8)
addr = fb.physical_address

vdma = MMIO(ol.ip_dict['axi_vdma_0']['phys_addr'], 0x100)
MM2S_DMACR = 0x00
MM2S_VSIZE, MM2S_HSIZE = 0x50, 0x54
MM2S_STRIDE, MM2S_ADDR = 0x58, 0x5C

vdma.write(MM2S_DMACR, 0x4)
time.sleep(0.2)
vdma.write(MM2S_DMACR, 0x1)
for i in range(3):
    vdma.write(MM2S_ADDR + i * 4, addr)
vdma.write(MM2S_STRIDE, STRIDE)
vdma.write(MM2S_HSIZE, WIDTH * BPP)
vdma.write(MM2S_VSIZE, HEIGHT)

fb[:] = 0
for x in range(0, WIDTH, 128):       # graduations tous les 128 px
    fb[:, x:x + 4, :] = 255
fb[:, 0:20, :] = (255, 0, 0)         # repère ROUGE = pixel 0
fb.flush()
print("Mire affichée. Mesure la distance bord gauche -> barre rouge = OFF.")
