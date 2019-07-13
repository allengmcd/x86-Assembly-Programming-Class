@echo off

IF NOT EXIST build mkdir build
pushd build
cl /c ../CalcArrayCube.cpp
ml /c ../RowColSumCalculator.asm
link  RowColSumCalculator.obj CalcArrayCube.obj
popd
