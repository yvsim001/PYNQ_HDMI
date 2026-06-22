# PYNQ-Z1 — Pipeline Vidéo USB Caméra → HDMI (720p)

Projet **PA2** — Master Informationstechnik / Embedded Systems, FH Dortmund.
Pipeline vidéo matériel sur PYNQ-Z1 (Zynq-7020) : capture d'une caméra USB,
transfert en DDR, sortie HDMI 720p via une chaîne AXI-Stream personnalisée.
Étape suivante prévue : insertion d'une IP d'inférence MobileNetV2 (détection
de personne) dans le pipeline.

---

## 1. Matériel & outils

| Élément              | Détail                                              |
|----------------------|-----------------------------------------------------|
| Carte                | PYNQ-Z1 (Zynq XC7Z020-CLG400-1)                     |
| Caméra               | Logitech C270 (720p MJPG @ 30 fps)                  |
| Sortie               | HDMI (connecteur HDMI OUT de la carte)              |
| Outil FPGA           | Vivado 2024.1                                        |
| OS embarqué          | PYNQ (image officielle), accès Jupyter / SSH        |
| Alimentation         | **12V barrel** obligatoire (pas l'alim USB)         |

---

## 2. Architecture du pipeline

```
 Caméra USB C270 ──(OpenCV/V4L2, MJPG)──► PS (ARM)
        │
        ▼  (écriture framebuffer)
   DDR (framebuffer contigu, alloué via pynq.allocate)
        │
        ▼  AXI VDMA — canal MM2S (lecture mémoire → flux)
   AXI4-Stream
        │
        ▼
   v_axi4s_vid_out  ◄── timing ── v_tc_0 (Video Timing Controller, 720p figé)
        │
        ▼
   rgb2dvi (encodage TMDS)
        │
        ▼
   HDMI OUT ──► Moniteur
```

- **Horloge pixel partagée** : `v_tc_0`, `v_axi4s_vid_out` et `rgb2dvi` doivent
  tourner sur **une seule horloge à 74,25 MHz** (standard 720p60). C'est le point
  qui a causé l'écran noir initial (voir docs/).
- **VTC sans AXI-Lite** : le Video Timing Controller est configuré en mode
  *standalone*, son timing est figé dans le bitstream. Il **n'apparaît donc pas**
  dans `ip_dict` — c'est normal, pas un signe d'IP manquante.

---

## 3. Structure du dépôt

```
.
├── README.md                  ← ce fichier
├── .gitignore
├── docs/
│   ├── PA2_camera_hdmi_documentation.pdf   ← documentation technique complète
│   └── images/                ← captures d'écran, photos du montage, mires
├── hardware/
│   ├── vivado_sources/        ← design_1.v, design_1_wrapper.v, contraintes
│   ├── bitstream/             ← design_1.bit + design_1.hwh (paire à déployer)
│   └── README.md              ← notes de build Vivado
├── src/
│   ├── live_camera_hdmi.py    ← script principal : caméra live → HDMI
│   ├── test_colorbar.py       ← test mire statique (validation chemin HDMI)
│   ├── test_camera_capture.py ← test isolé de capture caméra (debug V4L2)
│   └── measure_offset.py      ← mire graduée pour mesurer le décalage H
└── notebooks/
    └── camera_hdmi.ipynb      ← notebook Jupyter (optionnel)
```

---

## 4. Déploiement sur la carte

Copier **les deux fichiers ensemble**, même nom de base :

```
hardware/bitstream/design_1.bit   →  /home/xilinx/jupyter_notebooks/video/design_1.bit
hardware/bitstream/design_1.hwh   →  /home/xilinx/jupyter_notebooks/video/design_1.hwh
```

> ⚠️ Le `.hwh` doit correspondre au `.bit` (même build). Un `.hwh` périmé donne
> un `ip_dict` faux même si le bitstream charge.

Puis :

```python
from pynq import Overlay
ol = Overlay("/home/xilinx/jupyter_notebooks/video/design_1.bit")
print(ol.ip_dict.keys())   # attendu : axi_vdma_0, v_tpg_0, ps7
```

---

## 5. Lancer le flux caméra live

```bash
python3 src/live_camera_hdmi.py
```

Voir `src/live_camera_hdmi.py` pour les détails. Points clés :
- Ouvrir la caméra par **chemin explicite** `"/dev/video0"` (pas l'index `0`).
- Forcer **MJPG avant** de fixer la résolution (la C270 ne fait du 720p qu'en MJPG).
- Toujours **reset le VDMA dans un bloc `finally`** (sinon "DMA already running").

---

## 6. État du projet

| Étape                                            | État        |
|--------------------------------------------------|-------------|
| Chemin HDMI validé (mire statique)               | ✅ Fait     |
| Fix horloge pixel 74,25 MHz                      | ✅ Fait     |
| Capture caméra C270 720p (V4L2/MJPG)             | ✅ Fait     |
| Flux caméra live → HDMI                          | ✅ Fait     |
| Décalage horizontal (~256–288 px) à corriger     | 🔧 En cours |
| Insertion IP MobileNetV2 (détection personne)    | ⏳ À venir  |
| Bannière d'état + bordure colorée (feedback)     | ⏳ À venir  |

---

## 7. Licence / contexte

Projet académique (PA2), FH Dortmund. Superviseur : Prof. Dr. Michael Karagounis.
