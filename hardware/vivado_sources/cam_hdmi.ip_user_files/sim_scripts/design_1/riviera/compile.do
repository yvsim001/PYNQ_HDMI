transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_17
vlib riviera/processing_system7_vip_v1_0_19
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/xbip_utils_v3_0_13
vlib riviera/axi_utils_v2_0_9
vlib riviera/xbip_pipe_v3_0_9
vlib riviera/xbip_dsp48_wrapper_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_9
vlib riviera/xbip_bram18k_v3_0_9
vlib riviera/mult_gen_v12_0_21
vlib riviera/floating_point_v7_0_23
vlib riviera/xbip_dsp48_mult_v3_0_9
vlib riviera/xbip_dsp48_multadd_v3_0_9
vlib riviera/div_gen_v5_1_22
vlib riviera/v_tpg_v8_2_5
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/v_tc_v6_1_14
vlib riviera/v_vid_in_axi4s_v4_0_11
vlib riviera/v_axi4s_vid_out_v4_0_18
vlib riviera/v_tc_v6_2_8
vlib riviera/xlconstant_v1_1_9
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/fifo_generator_v13_2_10
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_fifo_v1_0_19
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/lib_bmg_v1_0_17
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_datamover_v5_1_33
vlib riviera/axi_vdma_v6_3_19
vlib riviera/axi_protocol_converter_v2_1_31

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 riviera/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 riviera/processing_system7_vip_v1_0_19
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap xbip_utils_v3_0_13 riviera/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 riviera/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 riviera/xbip_pipe_v3_0_9
vmap xbip_dsp48_wrapper_v3_0_6 riviera/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 riviera/xbip_dsp48_addsub_v3_0_9
vmap xbip_bram18k_v3_0_9 riviera/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 riviera/mult_gen_v12_0_21
vmap floating_point_v7_0_23 riviera/floating_point_v7_0_23
vmap xbip_dsp48_mult_v3_0_9 riviera/xbip_dsp48_mult_v3_0_9
vmap xbip_dsp48_multadd_v3_0_9 riviera/xbip_dsp48_multadd_v3_0_9
vmap div_gen_v5_1_22 riviera/div_gen_v5_1_22
vmap v_tpg_v8_2_5 riviera/v_tpg_v8_2_5
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_14 riviera/v_tc_v6_1_14
vmap v_vid_in_axi4s_v4_0_11 riviera/v_vid_in_axi4s_v4_0_11
vmap v_axi4s_vid_out_v4_0_18 riviera/v_axi4s_vid_out_v4_0_18
vmap v_tc_v6_2_8 riviera/v_tc_v6_2_8
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap lib_bmg_v1_0_17 riviera/lib_bmg_v1_0_17
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_33 riviera/axi_datamover_v5_1_33
vmap axi_vdma_v6_3_19 riviera/axi_vdma_v6_3_19
vmap axi_protocol_converter_v2_1_31 riviera/axi_protocol_converter_v2_1_31

vlog -work xilinx_vip  -incr "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/VIVADO/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"G:/VIVADO/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/VIVADO/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"G:/VIVADO/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"G:/VIVADO/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_ps7_0/sim/design_1_ps7_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vcom -work xbip_utils_v3_0_13 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_23 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_mult_v3_0_9 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_9 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work div_gen_v5_1_22 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/div_gen_v5_1_vh_rfs.vhd" \

vlog -work v_tpg_v8_2_5  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/v_tpg_v8_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/sim/design_1_v_tpg_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_14 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/fd54/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_11  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/4705/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_18  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/52cd/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_8 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/5959/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/d57c/src/ClockGen.vhd" \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/design_1/ip/design_1_rgb2dvi_0_0/sim/design_1_rgb2dvi_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_17 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3f29/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_19  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_19 -93  -incr \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../cam_hdmi.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+G:/VIVADO/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l v_tpg_v8_2_5 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l xlconstant_v1_1_9 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

