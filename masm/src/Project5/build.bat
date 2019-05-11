@echo off

IF NOT EXIST build mkdir build
pushd build
cl /c ../ConditionCodesDemo.cpp
ml /c ../ConditionCodes.asm
link  ConditionCodes.obj ConditionCodesDemo.obj
popd
