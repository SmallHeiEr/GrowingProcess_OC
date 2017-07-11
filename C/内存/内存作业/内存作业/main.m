//
//  main.m
//  内存作业
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Func.h"
int main(int argc, const char * argv[]) {
// 动态申请40个字节,随机数的范围是98-175的整数,进行赋值,并且遍历输出
//    int *p = malloc(40);
//    int a[10] = {0};
//    p = a;
//    sui(p, 20, 98, 175);
//    shu(p, 20);
//    
    
//    动态申请80个字节,整形,随机赋值20 - 70,找到最大的数和最后一位进行交换,找到最小和第一位进行交换,最后遍历输出
//    int *p = malloc(80);
//    int a[20] ={0};
//    p = a;
//    int c = 0;
//    int d = 0;
//    int *q = &c;
//    int *k = &d;
//   sui(p, 20, 20, 70);
//   // c = da(p, 20);
//   // d = xiao(p, 20);
//    huan(q, &a[19]);
//    huan(k, &a[0]);
//    shu(p, 20);
//    动态申请80个字节内容,然后随机赋值,范围是20-70,然后进行冒泡排序
////
//    int *p = malloc(80);
//    int a[20] ={0};
//    p = a;
//    sui(p, 20, 20, 70);
//    mao(p, 20);
//    
    
    
    
    
    
    
//    动态申请80个字节,随机赋值20-70,然后把整个顺序头尾倒置,最后输出全部内容
//    int *p = malloc(80);
//    int a[20] ={0};
//    p = a;
//    sui(p, 20, 20, 70);
//    shu(p, 20);
//    for (int i = 0; i < 19; i++) {
//        for (int j = 0; j < 19 - i; j++) {
//            int temp = p[j];
//                p[j] = p[j + 1];
//                p[j + 1] = temp;
//            }
//    }
//    shu(p, 20);
    
//    通过动态内存分配的方法,找到200到300之间,百位,十位,个位和为12,乘积是42的数
    
//    for (int i = 2; i < 3; i++) {
//        for (int j = 0; j < 10; j++) {
//            for (int k = 0; k < 10; k++) {
//                if (12 == i + j + k && 42 == i * j * k) {
//                    b++;
////                }
////            }
////        }
////    }
//    int a[100] = {0};
//    int b = 0;
//    for (int i = 0; i < 100; i++) {
//        a[i] = 200 + i;
//    }
//    for (int i = 0; i < 100; i++) {
//        if (12 == 2 + a[i] % 100 / 10 + a[i] % 10 &&          42 == 2 * (a[i] % 100 / 10) * (a[i] % 10)) {
//            b++;
//        }}
//    printf("%d\n", b);
//    int *p = malloc(sizeof(int) * (b));
//    int *q = p;
//    for (int i = 0; i < 100; i++) {
//        if (12 == 2 + a[i] % 100 / 10 + a[i] % 10 && 42 == 2 * (a[i] % 100 / 10) * (a[i] % 10)) {
//            *p = a[i];
//            p++;
//        }}
//    p = q;
//    for (int i = 0; i < b; i++) {
//         printf("%d\n", *p);
//        p++;
//    }
  
//    从键盘输入一个字符串,利用字符串的方法,动态申请内存,然后把字符串放到堆空间保存
    char a[100] = {0};
    scanf("%s", a);
    
           char *p = malloc(sizeof(char) *  (strlen(a) + 1));
        char *q = p;
        for (int i = 0; i < 100; i++) {
            if ('\0' != a[i]) {
               *p = a[i];   p++;
       }
            }
        *p = '\0';
        p = q;
    printf("%s\n", p);
    free(q);
//    通过键盘输入一个字符串,有一已知字符串，其中包含 数字 字符，提取其中的 数字字符 ，要求动态分配内存
//    char a[100] = {0};
//    scanf("%s", a);
//    
//    char *p = malloc(sizeof(char) *  (strlen(a) + 1));
//    char *q = p;
//    for (int i = 0; i < 100; i++) {
//        if (a[i] >= '0' && a[i] <= '9') {
//            *p = a[i];
//            p++;
//        }
//    }
//    *p = '\0';
//    p = q;
//    printf("%s\n", p);

    
    
    
    
    
    
    
    
    
    
    return 0;
}
