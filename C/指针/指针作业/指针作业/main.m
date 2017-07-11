//
//  main.m
//  指针作业
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Func.h"


void 随机数(int a[], int cont, int d, int b){
    for (int i = 0; i < cont; i++) {
        a[i] = arc4random() % (d - b + 1) + b;
    };}
int main(int argc, const char * argv[]) {
   
//    int a[10] = {48, 64, 32, 1, 58, 74, 63, 51, 16, 54};
//    int *p = NULL;
//    p = a;
//    int c = a[0];
//    int d = a[9];
//    int max = 0, min = a[0];
//    a[0] = *p;
//    for (int i = 0; i < 10; i++) {
//       max = max > p[i] ? max : p[i];
//        min = p[i] < min ? p[i] : min;
//}
//    p[0] = min;
//   p[9] = max;
//    for (int i = 0; i < 10; i++) {
//       if (p[i] == max && i !=9) {
//           p[i] = d;
//        }
//        else if (p[i] == min && i != 0){
//            p[i] = c;}
//        printf("%d ", p[i]);
//    }
    /////////////////
    
//    1.编写函数交换两个浮点数(参数为指针)
    
    
    
    
    
    
    
//    讲师  17:39:18
//    2.编写函数交换两个整数(参数为指针)
//    讲师  17:39:24
//    3.编写函数交换两个字符(参数为指针)
//    讲师  17:39:30
//    4.随机生成5个数的数组, 找到最大值, 把最大值和第一位互换(指针实现)
//    int a[5] = {0};
//    int max = 0;
//   int *p = NULL;
//   p = a;
//    for (int i = 0; i < 5; i++) {
//       p[i] = arc4random() % 21 + 20;
//         max = max > p[i] ? max : p[i];
//        }
//    for (int i = 0; i < 5; i++) {
//              if (p[i] == max) {
//    zheng(&p[i], &p[0]);
//}
//}
//    for (int i = 0; i < 5; i++) {
//        printf("%d\n", a[i]);
//    }
   ///////////////////////
//    int a = 8, b = 2;
//    zheng(&a, &b);
//    
//    printf("%d%d", a, b);
//    
//    
    
//    讲师  17:39:35
//    5.随机生成5个数的数组, 找到最小值, 把最小值和最后一位互换(指针实现)
//    
//    int a[5] = {0};
//    int min = 0;
//    int *p = NULL;
//    p = a;
//    for (int i = 0; i < 5; i++) {
//        p[i] = arc4random() % 21+30;
//        min = p[0];
//       }
//    for (int i = 0; i < 5; i++){
//        min = min < p[i] ? min : p[i];
//    }
//    for (int i = 0; i < 5; i++) {
//        if (p[i] == min) {
//            zheng(&p[i], &p[4]);
//        }
//    }
//   for (int i = 0; i < 5; i++) {
//        printf("%d\n", a[i]);
//    }
    
    
    
    
    
    
    
    
    
    
    
    
//    讲师  17:39:42
//    6.随机产生10个整数，将其中最小的数与第一个数对换，把最大的数和最后一个数对换(指针实现)
//    int a[10] = {0};
//        int min = 0;
//        int max = 0;
//    随机数(a, 10, 70, 30);
//    min = a[0];
//            //}void
//        for (int i = 0; i < 10; i++){
//            min = min < a[i] ? min : a[i];
//            max = max > a[i] ? max : a[i];
//
//        }
//        for (int i = 0; i < 10; i++) {
//            if (a[i] == min) {
//                zheng(&a[i], &a[0]);
//            }
//            else if(a[i] == max){
//                zheng(&a[i], &a[9]);}
//        }
//       for (int i = 0; i < 10; i++) {
//            printf("%d\n", a[i]);
//        }
//    
////    讲师  17:39:48
////    7.编写函数(无返回有三个参数), 向函数传递三个浮点数, 函数中实现(指针完成):
////    (1) 求得最大值和最小值
////    (2) 交换最大值和最小值
////    (3) 打印三个数
//    
////    qi(0.1, 0.2, 0.3);
////    
////    
//////    
////    
////    
////    
////    
////    
////    
////    
////    
////    
//    
////    讲师  17:40:01
////    8.使用指针自己实现strlen函数的功能
//     char a[] = "time";
////     long len = strlen(a);
////    printf("%ld\n", len);
////
//    char *p = a;
//    chang(p);
//      
//    
//    char b[10] = {0};
//    
//    ////////////
//    9.使用指针自己实现strcpy函数的功能
// ////////
//    10.有一字符串，包含数字与字母，编程去除数字。
//    (1) 要求在原字符串中操作
//    (2) 使用指针处理。
//    
    char str3[200] = {"zhang123xi123aotian3"};
    
    char *q = NULL;
    q = str3;
    for (int i = 0; i < 200 - 1; i ++) {
        for (int k = 0; k < 200 - i - 1; k ++) {
            if (q[k] >= '0' && q[k] <= '9') {
                q[k] = '\0';
                char temp = q[k];
                q[k] = q[k + 1];
                q[k + 1] = temp;
            }
            
        }
    }
    for (int i = 0 ; i < 200; i++) {
        printf("%c", q[i]);
    }
    printf("\n");
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
