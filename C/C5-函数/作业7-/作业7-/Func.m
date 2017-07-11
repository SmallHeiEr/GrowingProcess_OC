//
//  Func.m
//  作业7-
//
//  Created by dllo on 15/12/21.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Func.h"
//7.1
//void sui(int a[], int n)
//{int m = 0;
//for(int i = 0; i < n; i++){
//    a[i] = arc4random() % 91 + 10;
//   m = m > a[i] ? m : a[i];
//    printf("%d ", a[i]);
//   }
//    printf("\n最大值为%d ", m);
//   
//}
/////////////////////
////7.2
//void shui(void){
//    int sum = 0;
//    for (int i = 1; i < 10; i++) {
//        for (int j = 0; j < 10; j++) {
//            for (int k = 0; k < 10; k++) {
//                if (i * i * i + j * j * j + k * k * k == i * 100 + j * 10 + k) {
//                    printf("%d%d%d\n", i, j, k);
//                  sum += 1;
//                }
//            }
//        }
//    }printf("\n一共%d个水仙花数",sum);
//   }
/////////////////////////
////7.3
//void zuhe(void){
//    for (int a = 1; a < 10; a++) {
//        for (int b = 0; b < 10; b++) {
//            for (int c = 1; c < 10; c++){
//                if(a * 100 + b * 10 + c + c * 100 + b * 10 + a == 1333){
//                    printf("%d%d%d", a, b, c);
//                }
//            }
//
//}
////////////////
        //7.4
//        void fu(int a){
//                if (a > 0) {
//                    printf("正数");}
//                else  if(a < 0) {
//                    printf("负数");}
//            
//                else  if(a == 0) {
//                    printf("0");
//                }
//}
/////////////////
//7.5
BOOL yu(int b){
    
if (b % 2 == 0) {
    printf("是偶数");
      return YES;
    }
else {
    printf("是奇数");}
    return NO;}
////////////////
//7.6
//float gen(float a, float b, float c){
//return b * b - 4 * a * c;
//}
//float zhi(float a,float b, float c){
//    float x1 = 0, x2 = 0;
//    if (gen(a, b, c) > 0) {
//        x1 = (0 - b + sqrt(gen(a, b, c))) / (2 * a);
//        x2 = (0 - b - sqrt(gen(a, b, c)))/ (2 * a);
//        printf("x1=%.2f\nx2=%.2f\n", x1, x2);
//    }
//    else if (gen(a, b, c) == 0){
//        x1 = x2 =(0 - b) / (2 * a);
//         printf("x1=x2=%.2f", x1);
//    }
//    else printf("无解");
//    return 0;
//}
//////////////////////
//7.7
//void han(int a[], int n)
//{for(int i = 0; i < n; i++){
//    a[i] = arc4random() % 91 + 10;
//    printf("%d ", a[i]);
//}}
////////////////
//7.8
//void maopao(int a[], int n){
//    for(int i = 0; i < n; i++){
//            a[i] = arc4random() % 91 + 10;
//    }
//for (int i = 0; i < n - 1; i++) {
//            for (int j = 0; j < n - 1 - i; j++) {
//                if (a[j] > a[j + 1]) {
//                    int temp = a[j];
//                    a[j] = a[j + 1];
//                    a[j + 1] = temp;
//                    }    }}
//for(int i = 0; i < n; i++){
//    printf("%d ", a[i]);}
//}
///////////////////////
//8.1
































