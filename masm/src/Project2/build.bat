@echo off

IF NOT EXIST build mkdir build
pushd build
cl /c ../ArrayReverser.cpp
ml /c ../Reverser.asm
link  ArrayReverser.obj Reverser.obj
popd
