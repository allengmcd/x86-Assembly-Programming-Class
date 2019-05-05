@echo off

IF NOT EXIST build mkdir build
pushd build
cl /c ../MemoryAddressing.cpp
ml /c ../MemoryAddressingDemo.asm
link  MemoryAddressing.obj MemoryAddressingDemo.obj
popd
