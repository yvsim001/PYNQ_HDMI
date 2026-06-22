#!/usr/bin/env python3
"""
test_camera_capture.py — Test isolé de la capture caméra (debug V4L2).

Vérifie que la C270 délivre bien des frames 720p, indépendamment du FPGA.
Lancer ce test si l'écran HDMI n'affiche pas le flux caméra.

Diagnostic clé découvert : ouvrir par CHEMIN "/dev/video0" + un time.sleep(0.5)
après ouverture débloque la capture là où VideoCapture(0) échoue silencieusement
(FOURCC vide, size 0x0, lectures False).
"""

import time
import cv2

cap = cv2.VideoCapture("/dev/video0", cv2.CAP_V4L2)
time.sleep(0.5)
print("opened:", cap.isOpened())

cap.set(cv2.CAP_PROP_FOURCC, cv2.VideoWriter_fourcc(*'MJPG'))
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 1280)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 720)

fourcc = int(cap.get(cv2.CAP_PROP_FOURCC))
print("FOURCC:", "".join([chr((fourcc >> 8 * i) & 0xFF) for i in range(4)]))
print("size:", cap.get(cv2.CAP_PROP_FRAME_WIDTH), cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

for i in range(15):
    ok, frame = cap.read()
    print(i, ok, None if frame is None else frame.shape)
    time.sleep(0.05)

cap.release()
# Attendu : opened True, FOURCC MJPG, size 1280x720, lectures True (720,1280,3)
