/****************************************************************************
  > File Name : 3-64.c
  > Author  : kevin 
  > Email   : xyu.kevin@gmail.com
  > Created : Sat 13 Apr 2013 10:51:13 AM CST
****************************************************************************/

#include <stdio.h>

#define E1(n) (3n)
#define E2(n) (2n-1)

int sum_col(int n, int A[E1(n)][E2(n)],int j)
{
	int i;
	int result = 0;
	for(i=0;i<E1(n);i++)
		result += A[i][j];
	return result;
}
