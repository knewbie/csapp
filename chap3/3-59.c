/****************************************************************************
  > File Name : 3-69.c
  > Author  : kevin 
  > Email   : xyu.kevin@gmail.com
  > Created : Fri 12 Apr 2013 10:03:04 PM CST
****************************************************************************/

#include <stdio.h>

int sitch_prob(int x,int n)
{
	int result = x;
	switch(n){
		case 40:
		case 42:
			result <<= 3;
			break;
		case 43:
			result >>= 3;
			break;
		case 44:
			result <<= 3;
			result -= x;
		case 45:
			result = result * result;
		default:
			result += 0x11;
	}

	return result;
}

