/****************************************************************************
  > File Name : 3-56.c
  > Author  : kevin 
  > Email   : xyu.kevin@gmail.com
  > Created : Thu 11 Apr 2013 11:35:56 PM CST
****************************************************************************/

/*Note: 
 *The key to this problem is the last line: movl %edi,%eax. 
 *so we can know that  %eax is just  a intermediate register and the result initial value is 
 * %edi($1431655765 == 0x55555555), then the mask initial value is %edx($-2147483648 == 0x80000000)
 * then from the line 7 and 8,there is & and ^ ops. so we get the line: result ^= mask&x 
 * line 10:mask shift: mask = mask>> n
 * line 12: the condition is mask != 0
 * 
 * The 3-56.s file is generated from  this c function compiled
 * */ 

#include <stdio.h>

int loop(int x,int n)
{
	int result = 0x55555555;
	int mask;
	for(mask=0x80000000;mask != 0; mask = mask>>n)
		result ^= mask & x;

	return result;
}
