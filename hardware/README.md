# Hardware — Build Vivado

## Fichiers à exporter depuis Vivado

Après `write_bitstream Complete`, récupérer **les deux** :

| Source dans le projet Vivado                                              | Destination dépôt          |
|---------------------------------------------------------------------------|----------------------------|
| `cam_hdmi.runs/impl_1/design_1_wrapper.bit`                               | `bitstream/design_1.bit`   |
| `cam_hdmi.gen/sources_1/bd/design_1/hw_handoff/design_1.hwh`              | `bitstream/design_1.hwh`   |

Les deux doivent porter le **même nom de base** une fois déployés sur la carte.

## Configuration des IP

- **clk_wiz_1** : génère l'horloge pixel **74,25 MHz** (clk_out1). C'est l'unique
  horloge du sous-système vidéo. Réglée dans l'onglet *Output Clocks*.
- **v_tc_0** (Video Timing Controller) : mode **standalone** (pas d'AXI-Lite),
  timing **1280×720p60** figé. `gen_clken` relié à `v_axi4s_vid_out_0` (vtg_ce).
- **v_axi4s_vid_out_0** : convertit AXI-Stream -> vidéo native, locké sur le VTC.
- **rgb2dvi** : encodage TMDS, `PixelClk` = la même 74,25 MHz.
- **axi_vdma_0** : canal MM2S actif (lecture DDR -> stream). AXI-Lite pour le PS.
- **v_tpg_0** : générateur de mire (optionnel, présent pour tests). AXI-Lite.

## Toutes les horloges du sous-système vidéo

`v_tc_0.clk`, `v_axi4s_vid_out_0.aclk`, `rgb2dvi.PixelClk` -> **toutes sur
`clk_wiz_1/clk_out1` (74,25 MHz)**. C'était la cause de l'écran noir initial :
un mélange d'horloges (100 MHz vs 74,25 MHz) cassait le timing.

## Warnings normaux (à ignorer)

```
[BD 41-2384] Width mismatch ... S_AXI_HP0_AWID(6) ... M00_AXI_awid(1)
            - Only lower order bits will be connected.
```
Côté PS l'ID AXI fait 6 bits, côté VDMA 1 bit. Vivado câble le bit utile.
Présent dans tous les designs VDMA->HP, sans impact.
