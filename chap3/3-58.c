/****************************************************************************
  > File Name : 3-58.c
  > Author  : kevin 
  > Email   : xyu.kevin@gmail.com
  > Created : Fri 12 Apr 2013 10:28:17 PM CST
****************************************************************************/

#include <stdio.h>

typedef enum {MODE_A,MODE_B,MODE_C,MODE_D,MODE_E } mode_t;

int switch3(int *p1,int *p2,mode_t action)
{
	int result = 0 ;
	switch(action){
		case MODE_A:
			result = *p1;
			*p1 = *p2;
			break;
		case MODE_B:
			result = *p1 + *p2;
			*p2 = result;
			break;
		case MODE_C:
			*p2 = 15;
			result = *p1;
			break;
		case MODE_D:
			*p2 = *p1;
			result = 17;
			break;
		case MODE_E:
			result = 17;
			break;
	}
	return  result;
}
