@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto a726f658034a40a29d8ff452005703ce -m64 --debug typical --relax --mt 2 --include "../../../MIPSfpga_axi4.srcs/sources_1/ipshared/imgtec.org/mips_microaptiv_up_v1_3_1/9bb0f3a7/rtl_up" --include "../../../MIPSfpga_axi4.srcs/sources_1/ipshared/xilinx.com/axi_infrastructure_v1_1/cf21a66f/hdl/verilog" -L xil_defaultlib -L ahblite_axi_bridge_v3_0 -L generic_baseblocks_v2_1 -L axi_infrastructure_v1_1 -L axi_register_slice_v2_1 -L fifo_generator_v12_0 -L axi_data_fifo_v2_1 -L axi_crossbar_v2_1 -L axi_lite_ipif_v3_0 -L lib_cdc_v1_0 -L interrupt_control_v3_1 -L axi_gpio_v2_0 -L blk_mem_gen_v8_2 -L axi_bram_ctrl_v4_0 -L util_ds_buf_v2_01_a -L util_vector_logic_v2_0 -L lib_pkg_v1_0 -L lib_srl_fifo_v1_0 -L axi_uart16550_v2_0 -L axi_iic_v2_0 -L v_tc_v6_1 -L v_tpg_v6_0 -L v_axi4s_vid_out_v3_0 -L axi_protocol_converter_v2_1 -L unisims_ver -L unimacro_ver -L secureip --snapshot system_tb_behav xil_defaultlib.system_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
