// ArrayReverser.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>

extern "C" void Reverser(int* y, const int *x, int n);
int main()
{
	const int n = 10;
	int x[n], y[n];

	for (int i = 0; i < n; i++)
	{
		x[i] = i;
	}

	Reverser(y, x, n);

	printf("\n-------------------Array Reverser-------------------\n");
	for (int i = 0; i < n; i++)
	{
		printf("i:		%5d		y: %5d		x: %5d\n", i, y[i], x[i]);
	}

	return 0;
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
