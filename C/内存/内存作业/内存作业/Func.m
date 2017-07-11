//
//  Func.m
//  内存作业
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Func.h"
//给数组a［count］赋值b到c的随机数
void sui(int *p, int count, int b, int c){
for (int i = 0; i < count; i++) {
     p[i] = arc4random() % (c - b + 1) + b;
}}
///求数组a［count］的最大值
int da(int *p, int count){
    int max = 0;
for (int i = 0; i < count; i++) {
    max = max > p[i] ? max : p[i];
    
}return max;
}
//最小值
int xiao(int *p, int count){
    int min = p[0];
    for (int i = 0; i < count; i++) {
        min = min < p[i] ? min : p[i];
        }return min;
}
//交换整形
void huan(int *p, int *q){
    int a = *p;
    *p = *q;
    *q = a;
}
//遍历输出
void shu(int *p, int count){
    for (int i = 0; i < count; i++) {
        printf("%d ", p[i]);
    }
    printf("\n");
}

//冒泡
void mao(int *p, int count){
    for (int i = 0; i < count - 1; i++) {
        for (int j = 0; j < count - 1 - i; j++) {
            if (p[j] > p[j + 1]) {
                int temp = p[j];
                p[j] = p[j + 1];
                p[j + 1] = temp;
            }
        }
    }

}



