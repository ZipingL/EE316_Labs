@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim time_multiplexing_tb_behav -key {Behavioral:sim_1:Functional:time_multiplexing_tb} -tclbatch time_multiplexing_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
