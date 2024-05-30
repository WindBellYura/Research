#include <stdio.h>
#include "untitled_ert_rtw/rtwtypes.h"

#define ITERATION 1000000

real_T x = 0.0;
real_T y = 0.0;
real_T a = 0.0;
real_T c = 0.0;
real_T z = 0.0;
real_T b = 0.0;
real_T d = 0.0;
uint32_T i = 0;


int main() {
    /* ��ʼ��ģ�� */
    untitled_initialize();

    /* ���ó�ʼ����ֵ */
    x = 1.0;
    y = 2.0;
    a = 3.0;
    c = 4.0;
    i = ITERATION;

    /* ��ѭ�� - ����ֻѭ��һ����Ϊʾ�� */
   
        /* ������������� x, y, a ��ֵ */

        /* ���ò������� */
     untitled_step();
        /* ��ȡ����ӡ���ֵ */
     printf("Output z: %f\n", z);
     printf("Output b: %f\n", b);
     printf("Output d: %f\n", d);

    return 0;
}