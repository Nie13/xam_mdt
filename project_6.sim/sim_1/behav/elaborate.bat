@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto d6f1b32fcc3d479bb39b29273c036654 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot find_ndnddn_tb_behav xil_defaultlib.find_ndnddn_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
