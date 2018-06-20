@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim system_tb_behav -key {Behavioral:sim_1:Functional:system_tb} -tclbatch system_tb.tcl -view E:/Peripheral_Interface_lab/MIPSfpga_ADT7420/system_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
