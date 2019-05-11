// This code is from x86 Assembly Language From Ground Up from Udemy 
// link: https://www.udemy.com/x86-assembly-programming-from-ground-uptm/

// MemoryAddressing.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>

extern "C" char GlChar = 10;
extern "C" short GlShort = 20;
extern "C" int GlInt = 30;
extern "C" long long GlLongLong = 0x00000000FFFFFFFF;

extern "C" void IntegerAddition(char a, short b, int c, long long d);


int main()
{
	IntegerAddition(3, 5, 37, 11);

	printf("Char value %d\n", GlChar);
	printf("Short value %d\n", GlShort);
	printf("Int value %d\n", GlInt);
	printf("LongLong value %lld\n", GlLongLong);

	return 0;
}