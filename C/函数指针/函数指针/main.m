//
//  main.m
//  函数指针
//
//  Created by dllo on 15/12/25.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
////void test(void){
////    printf("函数\n");
////
////}
int sum(int a, int b){
   int c = a + b;
    //printf("%d", c);
    return c;
}
int max(int a, int b){
    int c = a > b ? a : b;
    return c;
}
void diaoyong(int *p(int a, int b)){
   p(3, 6);
    
   
//    printf("%d", p(a, b));


}



int main(int argc, const char * argv[]) {
   //定义函数指针
   // void (*p)(void) = NULL;
//    int (*q)(int a, int b) = {NULL};
//    //int (*k)(int a, int b);
//    //指向函数
//    //p = test;
//    //q = sum;
//    char str[10] = {0};
//    scanf("%s", str);
//    if (str[0] == 'm') {  //(0 == str("max", str))
//        q = max;
//    } else {
//        q = sum;
//    }
//    // 通过指针调用
//    //q(5, 6);
//   // printf("%d", k(5, 6));
//    //q(1, 2);
//    printf("%d", q(1, 2));
//
    diaoyong(sum);
//   printf("%d",diaoyong(sum)) ;
//    
    return 0;
}
