@echo off

IF NOT EXIST build mkdir build
pushd build
cl /c ../GlobalVairablesDemo.cpp
ml /c ../GlobalVairables.asm
link  GlobalVairables.obj GlobalVairablesDemo.obj
popd
