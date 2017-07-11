//
//  main.m
//  指针
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  // NOLL代表空的意思，即为指针类型的0
//    
//    
////    float *a = NULL;
////    char *C = NULL;
////    double *l = NULL;
////    long *k = NULL;
////    short *j = NULL;
////    
//    
//    //两个重要运算符   &   ＊
////    & -取址运算符－获取一个变量的所在地址
////    ＊ -取值运算符－获取一个地址所在的值
////    指针p只想变凉a所在地址空间
////    int *p = NULL;
////     int b = 3;
////    p = &b;
////    printf("%p\n", &a);
////    
////    printf("%d\n", *p);
////
////    float *a = NULL;
////    char *C = NULL;
////    double *l = NULL;
////    long *k = NULL;
////    short *j = NULL;
////
////    long n = 2;
////    k = &n;
////    printf("%ld", *k);
////    char m = 'U';
////    C = &m;
////    printf("%c", *C);
////    
//    
//    int a = 5;
//    int b = 3;
//    int e = 0;
//    int *c = NULL;
//    int *d = NULL;
//    int *f = NULL;
//    d = &a;    //a = *d
//    c = &b;
////    e = *d + *c;
////    f = &e;
////    printf("%d\n", *f);
////    
//   f = &e;
//    
//    *f = *d;
//    *d = *c;
//    *c = *f;
//    printf("%d", b);
//    
//    
    //定义多个指针－数组；
//    int *p[3] = {NULL};
//    int a = 3;
//    p[1] = &a;
//    *p[1] = 5;
//    printf("%d", a);
//    int a[5] = {1, 2, 3, 4, 5};
//    int *p = NULL;
//    p = &a[0];
    //和p＋1一样；
//    p = p + 3;
//   // 指针常量的操作为移动，即加减
//    *p = 14;
//    printf("%d\n", a[3]);
//    
//    for (int i = 0; i < 5; i++) {
//        
//        printf("%d", *p);
//  p++;
//    }
////
//    int a[5] = {1, 2, 3, 4, 5};
//    int *p = NULL;//*a = ?//
//    p = &a[0];
//    p = a;
//    for (int i = 0; i < 5; i++) {
//        
//       printf("%d\n", a[i]);
//    }
//    
//    for (int i = 0; i < 5; i++) {
//        
//        printf("%d\n", *(a + i));
//    }
//    for (int i = 0; i < 5; i++) {
//        
//        printf("%d\n", *(p + i));
//    }
//    for (int i = 0; i < 5; i++) {
//        
//        printf("%d\n", p[i]);
//    }
////
//
    
//    printf("%d\n", a[2]);
//    printf("%d\n", *(a + 2));
//    printf("%d\n", *(p + 2));
//    printf("%d\n", a[2]);
//    
//    
//    int a[5] = {55, 33, 22, 11, 66};
//        int *p = NULL;
//    p = a;
//    for (int i = 0; i < 4; i++) {
//        for (int j = 0; j < 4 - i; j++) {
//            if (p[j] > p[j + 1]) {
//                
//          
//            int temp = p[j];
//                p[j] = p[j + 1];
//                p[j + 1] = temp;
//        }
//    }  }
//    
//    for (int i = 0; i < 5; i++) {
//        printf("%d\n", p[i]);
//    }
////    
//    int a = 259;
//    char *p = NULL;
//    p = &a;
//    printf("%d ",*p);
//    p++;
//    printf("%d\n", *p);
//    
    //不同类型指针意义：1， 移动式单位不同；
    //                2， 用＊取值时“视野”不同
    
//    int a = 3;
//    int b = 5;
//    int *p = NULL;
//    p = &a;
//    p++;
//    printf("%d\n", *p);
//    
//    
//    int p = 0;
//    int *q = NULL;
//    
//    printf("%ld\n", sizeof(p));
//     printf("%ld\n", sizeof(q));
//    
//    
//    
    
    
    
    
    
    
    
    
    return 0;
}
