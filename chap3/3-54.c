/****************************************************************************
  > File Name : 3-54.c
  > Author  : kevin 
  > Email   : xyu.kevin@gmail.com
  > Created : Thu 11 Apr 2013 10:18:49 PM CST
****************************************************************************/
/* Note: 
 * compiler version: GCC 4.7.2
 * compile: gcc -O1 -S 3-45.c
 * the produced file will be some little  different from the code in the textbook for use different compiler.
 * */
#include <stdio.h>

int decode2(int x,int y,int z)
{
	int temp,result;
	temp = z-y;
	result = temp;
	result <<=15;
	result >>=15;
	temp ^= x;
	return temp*result;
}
