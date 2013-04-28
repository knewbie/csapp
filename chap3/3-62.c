/****************************************************************************
  > File Name : 3-62.c
  > Author  : kevin 
  > Email   : xyu.kevin@gmail.com
  > Created : Fri 12 Apr 2013 11:56:18 PM CST
****************************************************************************/

#include <stdio.h>

#define M 6

void transposs(int A[M][M])
{
	int i,j;
	for(i=0;i<M;i++)
		for(j=0;j<i;j++){
			int t = A[i][j];
			A[i][j] = A[j][i];
			A[j][i] = t;
		}
}
