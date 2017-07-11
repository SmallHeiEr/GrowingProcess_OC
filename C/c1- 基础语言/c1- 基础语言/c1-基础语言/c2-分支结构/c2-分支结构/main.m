//
//  main.m
//  c2-分支结构
//
//  Created by dllo on 15/12/16.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   // if（ 条件）{
    //   要做的事
  //  }
   // 定义一个布尔类型变量
   //布尔类型变量之关心真假
   //0为假，非0为真，习惯用1表示
  //  Bool a = 1;
    //if (a) {
      //  printf("放假回家了！\n");
    //}
    
    //if(5>3){
      //  printf ("进入了分支\n");
    //}
    //练习
    //float a = 0;
    //float b = 0;
    //scanf("%f%f",&a,&b);
    //if (a>b) {
    //printf(" 第一个数大与第二个数\n");
    //     }
//判断是否相等重要编码规范：常量写在前面，变量写在后面
// 浮点类型数不能做相等判断
   // &&-逻辑与－两端表达式同时成立，结果才为真
    // ||-逻辑或－两端表达式不成立，结果才为假
    //int a = 0;
      //  scanf("%d", &a);
        //if (3<a && a<5) {
        //printf("进入分支\n");
        //}
   // int a = 0;
    //scanf("%d",&a);
    //if (10<a || a<-5 ){
      //  printf("甜甜\n");
//}

     // 短路效应
    //1，逻辑与－表达式1为假时，不会执行第二个表达式
    //2， 逻辑或－表达式1为真时，不会执行第二个表达式
    //int a = 3
    //5 > 3 && ++a;
    //printf("%d\n,a);

       //char a = 0;
      //scanf("%c",&a);
    //if ('m' == a ) {
        //printf("男性\n");
    //}
    
   // int x = 0;
    //int y = 0;
    //scanf("%d",&x);
    //if (x>5) {
      //  y = 2 * x ;
        //}
    //else {
       // y=3*x-1;
    //}
    //printf("y = %d\n",y);
    
    // int x = 0;
    //int y = 0;
    //scanf("%d",&x);
    //if (x>5) {
      //  y = 2 * x;
    //}
    //else if (x>3){
      //  y = 3*x-1;
    //}
    //else {
      //  y = x * x + 5;
    //}
     //printy("y = %d\n,y);
    //  从键盘输出两个数，输出最大值
   // int a = 0;
    //int b = 0;
    //int max =0;
    //从键盘输入两个数
    //scanf("%d%d",&a,&b);
    //判断最大
    //sint x = 0;
   //int y = 0;
    //scanf("%d",&x);//if (a>b) {
       // max = a;
    //} else {
        //输出最大值
       // printf("%d",max);
    //}
   // int a = 0;
   // int b = 0;
   // int max = 0;
   // scanf("%d%d",&a,&b);
    //max = a > b ? a : b ;
   // printf("%d\n",max);
    
    //switch (a) {
       // case 1:
           // printf("甜甜1\n");
           // break;
     
        //case 2 ;
            //printf("甜甜2\n");
           // break;
            
        //case 3 ;
       // printf("甜甜3\n");
    //}
    
    //enum season {
      //  spring,
        //summer,
        //autumn,
        //winter
    //};
    
    
        //1,default可以省略
      //2,case可添加任意多个
      //3,case后面只能是常量，不能是变量
      //4,进入某一个分支，顺序执行，一直到遇到break退出
      //5,swich整形表达式，case 整形常量表达式
            //int a = 0;
            //scanf("%d",&a);
           // switch(a){
        //case 1:
              //  printf("春天\n");
          //  break;
       // case 2:
                   // printf("夏天\n");
           //break;
       // case 3:
                 //   printf("秋天\n");
           // break;
       // case 4:
                   // printf("冬天\n");
           // break;
        //}
            
      //  enum eason {
       //pring=1,
        //ummer,
        //utumn,
        //inter
    //};
            
    //int a = 0;
    //scanf("%d",&a);
     //switch(a){
    //case  spring:
      //  printf("小春\n");
        //break;
    //case  summer:
    //printf("夏\n");
     //break ;
    //case  autumn:
      // printf("秋香\n");
     //break ;
       //  case winter;
        //printf("东虫\n");
    //break;
    //输入一个整数，判断奇偶，并输出“某某是基数”，“某某是偶数”。
     //第一题
    //    int a = 0;
    //    scanf("%d",&a);
    //    if (a % 2 == 0) {
    //        printf("%d为偶数\n",a);
    //    } else {
    //        printf("%d为积数\n",a);
    //
    //    }
    //作业第二题
    //    int a = 0;
    //    scanf("%d",&a);
    //    if (0<a) {
    //        printf("正数\n");
    //
    //    }
    //    else if (0>a){
    //        printf("负数\n");
    //
    //    }
    //    else printf("0\n");
    //作业第三题
    //    int a = 0;
    //    int b = 0;
    //    int c = 0;
    //    scanf("%d%d%d",&a,&b,&c);
    //    if (a>b && a>c) {
    //        printf("%d",a);
    //        }
    //    else if (b>a && b>c){printf("%d",b);}
    //    else printf("%d",c) ;
    //
    //    //作业第四题
    //    float a = 0;
    //    float b = 0;
    //    scanf("%f",&a);
    //    if (50 > a) {b = a*0.15;
    //        printf("%.2f\n",b);
    //    }
    //    else {b = a*0.15 + (a - 50)*0.1;
    //        printf("%.2f\n",b);
    //    }
    //
    //作业第五题
    //    int x = 0;
    //    int y = 0;
    //    scanf("%d",&x);
    //    if (1 > x) {y = x;
    //        printf("%d\n",y);}
    //    else
    //        if (10 > x){ y = 3*x - 1; }
    //        else
    //                y = 2*x - 1;
    //            printf("%d",y);
    //    //作业第六题
    //    float a = 0;
    //    float b = 0;
    //    char c = 0;
    //    scanf("%f%c%f",&a,&c,&b);
    //    switch (c) {
    //        case '+':
    //            printf("%.2f",a + b);
    //            break;
    //        case '-':
    //            printf("%.2f",a - b);
    //            break;
    //        case '*':
    //            printf("%.2f",a * b);
    //            break;
    //        case '/':
    //            printf("%.2f",a / b);
    //            break;
    //        default: printf("不支持运算");
    //            break;
    //    }
    //作业第七题
    //    int a = 0;
    //    int b = 0;
    //    int c = 0;
    //    scanf("%d%d%d",&a,&b,&c);
    //    if (a + b > c && a + c > b && b + c > a) {
    //        printf("能构成三角形\n");
    //    } else {
    //        printf("不能构成三角形\n");
    //    }
    //作业第八题
    //    int a = 0;
    //    int b = 0;
    //    int c = 0;
    //    scanf("%d%d%d",&a,&b,&c);
    //    if (a > b && a < c) {
    //        printf("%d",a);
    //    } else if (a > c && a < b) {
    //        printf("%d",a);
    //    } else
    //        if (b > a && b < c) {
    //            printf("%d",b);
    //       } else if (b > c && b < a) {
    //           printf("%d",b);
    //} else if (c > a && c < b) {
    //    printf("%d",c);
    //} else if (c > b && c < a) {
    //    printf("%d",c);}
    //else printf("没有中间值");
    //考试
    //int a = 0;
    //printf("输入100以内的数\n");
    //scanf("%d",&a);
    //if (a % 7 == 0 || a % 10 == 7  || a /10 ==7 ) {
      //  printf("%d\n",a);
    
     //else {
          //printf("过\n");
    //}
    
    
    
    
    
    
      return 0;
    }