exec echo `pwd` > pwdfile
exec cp ../src/parallella/fpga/edk/parallella_7020_headless/system.mhs .
exec mkdir -p data
exec cp ../src/parallella/fpga/edk/parallella_7020_headless/data/ps7_system_prj.xml data
puts "\n\nRunning platgen - output is squelched\n\n"
exec platgen -p xc7z020clg400-1 -lang verilog -intstyle pa -toplevel no -ti system_i -msg __xps/ise/xmsgprops.lst system.mhs
puts "\n\nDone\n\n"
cd synthesis
puts "\n\nRunning synthesis on system - output is squelched\n\n"
exec xst -ifn system_xst.scr
puts "\n\nDone\n\n"
#cd ../../../../..
cd ..
exec cp implementation/system.ngc .
exec cp implementation/system_processing_system7_0_wrapper.ngc .

#Add generated source to project
xfile add hdl/system.v
