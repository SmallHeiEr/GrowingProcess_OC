//
//  main.m
//  zpf
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou. All rights reserved.
//
#define SIZE 10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

//    for (int i = 1; i < 10; i++) {
//        for (int j = 0; j < 10 ; j++) {
//            for (int k = 0; k < 10 ; k++){
//                printf("%d%d%d  ",i,j,k  );
//            
//            }
//             }
//        
//    }
//    printf("\n");
//    
    //////////////////////////////////////
    ////////////////////////////////////
    //作业一3.5
//    float a = 0, b = 0;
//    printf("请输入金额");
//    scanf("%f", &a);
//    b  = a + 0.05 * a;
//    printf("%.2f ",b );
    //////////3.6
//    float a = 0, b = 0,c = 0;
//    scanf("%f%f",&a ,&b);
//    c = a / b;
//    c = c * 100;
//    printf("%0.2f%%",c );
    ////////3.7
//    int money = 0;
//    printf("请输入一个金额");
//    scanf("%d", &money );
//    int a = money / 20;
//    int b = (money - 20 * a ) / 10;
//    int c = (money - 20 * a - 10 * b) / 5;
//    int d=(money - 20 * a - 10 * b - 5 * c) / 1;
//    printf("%d ,%d ,%d, %d", a, b, c, d);
    ////////////////////////
    //3.8
//    printf("请输入两个数");
//    int a = 0, b = 0,c = 0, d = 0, e = 0, f = 0;
//    scanf("%d%d",&a ,&b);
//    c=a+b;
//    d=a-b;
//    e=a*b;
//    f=a/b;
//    printf( "乘得%d除得%d加得%d减得%d",e,f,c,d );
// /////////////////
    //4.1
//    int a = 0;
//    printf("请输入一个数");
//    scanf("%d",&a);
//    if (a % 2 == 0) {
//        printf("%d是偶数",a);
//    }
//    else{printf("%d是奇数",a);}
//    ///////////
    //4.2
//    float a = 0;
//    printf("请输入一个数");
//    scanf("%f", &a );
//    if (a > 0) {
//        printf("正数");}
//    else  if(a < 0) {
//        printf("负数");}
//        
//    else  if(a == 0) {
//        printf("0");
//    }
    //////////////
    //4.3
//    int a= 0, b = 0, c = 0;
//    scanf("%d%d%d", &a, &b, &c);
//    if (a > b && a > c) {
//        printf("max = %d", a);
//    
//    }
//     else if (b > a && b > c) {
//        printf("max = %d", b);
//    
//     }
//    
//    else printf("max = %d",c);
//    
    /////////////////
    //4.4
//    float T = 0, $ = 0;
//    scanf("%f", &T);
//    if (T < 50) {
//      $ = 0.15 * T;
//    }
//    else  $ = (T - 50) * 0.25 + 50 * 0.15;
//    
//    printf("%f", $);
    ///////////////////
    //4.6
//    float x = 0, y = 0;
//    scanf("%f", &x);
//    if (x < 1) {
//        y = x;
//    }
//    else if(1 <= x && x < 10){
//        y = 2 * x - 1;
//        }
//    else y = 3 * x - 11;
//    printf("%f", y);
    ////////////////
    //4.7
//    float a = 0, b = 0, d = 0;
//    char c = 0;
//    scanf("%f%c%f", &a, &c, &b);
//    
//    switch (c) {
//        case '+':
//            d = a + b;
//            printf("%.2f+%.2f=%.2f", a, b, d);
//            break;
//        case '-':
//            d = a - b;
//            printf("%.2f-%.2f=%.2f", a, b, d);
//            break;
//        case '*':
//            d = a * b;
//            printf("%.2f*%.2f=%.2f", a, b, d);
//            break;
//        case '/':
//            d = a / b;
//            printf("%.2f/%.2f=%.2f", a, b, d);
//            break;
//            
//        default:printf("运算出错");
//            break;
//    }
    //////////////
    //4.8
//    float a = 0, b = 0, c = 0;
//    scanf("%f%f%f", &a, &b, &c);
//    if (a + b > c && a + c > b && b + c > a) {
//        printf("是三角形");
//    }
//    else printf("不是三角形");
    /////////////////
    //4.9
//    int a = 0, b = 0, c = 0;
//    scanf("%d%d%d", &a, &b, &c);
//    if (a > b && a < c) {
//        printf("%d", a);
//    }
//    else if (b > a && b < c)
//    {
//        printf("%d", b);
//    }
//    else
//        printf("%d", c);
//    
    /////////////////
    
    ///////////////////
   //5.1
//    long n = 1;
//    for (int i = 1; i<21; i++) {
//        n = i * n;
//        
//    }
//    
//    printf("%ld",n);
    ////////////////
    //5.2
//    int n = 0,a=0,b=0;
//    for (int i=1; i<101; i++) {
//        n=n+i;
//        if (0==i % 2 ) {
//            a=a+i;
//        }
//        else b=b+i;
//    }
//    printf("%d\n%d\n%d",n,a,b);
/////////////////
    //5.3
//    int max = 0;
//        for (int i =1; i<21; i++) {
//        int a = arc4random()%(100-10+1)+10;
//if (a>max) {
                //max=a;
            //}
//            max = max > a ? max : a;
//            printf("%d ",a);
//    }
//    printf("\n%d",max);
    //////////////////
    //5.4
//    int x = 0;
//    for (int i = 1; i < 10; i++) {
//    for (int j = 0; j < 10; j++) {
//    for (int  k = 0 ; k < 10; k++) {
//    if (i*100+j*10+k*1==i*i*i+j*j*j+k*k*k) {
//        printf("%d%d%d\n",i,j,k);
//        x=x+1;
//                }
//            }
//        }
//        
//    }
//    printf("总数%d",x);
    
    //////////////
    //5.5
//    for (int a = 1; a < 10; a++) {
//        for (int b = 0; b < 10; b++) {
//            for (int  c = 1 ; c < 10; c++) {
//                if ((a*100+b*10+c)+(c*100+b*10+a)==1333) {
//                    printf("%d%d%d\n",a,b,c);
//                  
//                }
//            }
//        }
//        
//    }
    ///////////////
       ///////////////////////
    //5.6
    
    
    
    
    
    
    
    
    
    
    
    
    
   /////////////////////
    //5.7
//    int x=0;
//    for (int i = 1; i < 100; i++) {
//        if (i % 7 == 0 || i % 10 == 7 || i / 10 == 7) {
//            printf("%d ",i);
//           x++;
//        }
//    }
//    printf("\n%d",x);
   ///////////////////
//    int a = 0,max = 0;
//    for (int i = 1; i < 11 ; i++) {
//        a = arc4random()%(40-20+1)+20;
//        printf("%d ",a);
//        max = max > a ? max : a;
//    
//    }printf("\n%d\n",max);
    //////////////////
    
    //////////////////
    //6.1
//    int a[SIZE] = {0}, i = 0;
//    for(i = 0; i < SIZE; i++)
//        {
//            a[i] = i + 10;
//            printf("a[%d] = %d\n", i, a[i]);
//        }
    ///////////////////////////
    //6.2
//    int a[SIZE] = {0}, i = 0;
//    for(i = 0; i < SIZE; i++)
//    {
//        a[i] = i + 10;
//        printf("a[%d] = %d\n", i, a[i]);
//    }
//    int b[SIZE] = {0};
//    for (int i = 0; i < 10; i++) {
//        b[i] = a[i];
//    }
//    for (int i = 0; i < 10; i++) {
//        if (i < 5) {
//            a[i] = a[9 - i];
//        }
//        else a[i] = b[9 - i];
//    }
//    for (int i = 0; i < 10; i++) {
//        printf("a[%d] = %d\n", i, a[i]);
//    }
    /////////////////////////方法二
//    int a[SIZE] = {0}, i = 0;
//    for(i = 0; i < SIZE; i++)
//    {
//        a[i] = i + 10;
//        printf("a[%d] = %d\n", i, a[i]);
//    }
//    for (int i = 0; i < 9; i++) {
//        for (int j = 0; j < 9 - i; j++) {
//            int temp = a[j];
//                a[j] = a[j + 1];
//                a[j + 1] = temp;
//                }    }
//    for(i = 0; i < SIZE; i++)
//    { printf("a[%d] = %d\n", i, a[i]);
//    }
    //////////////////////
    //6.3
//    int a[SIZE] = {0}, i = 0,sum = 0;
//    for(i = 0; i < SIZE; i++)
//    {
//        a[i] = i + 10;
//         sum  += a[i];
//        printf("a[%d] = %d\n", i, a[i]);
//    }
//    printf("%d ", sum);
    ///////////////////////
    //6.4
//    int a[SIZE] = {0}, i = 0,jian = 0;
//    for(i = 0; i < SIZE; i++)
//    {
//        a[i] = i + 10;
//        if (i == 0) {
//            jian = a[1];
//        }
//        else jian -= a[i];
//        
//    }
//    printf("%d ", jian);
    ////////////////////////
    //6.5
//    int a[20] = {0}, sum = 0;
//    for (int i = 0; i < 20; i++) {
//        a[i] = arc4random()%(50 - 10 + 1) + 10;
//        
//    }for (int i = 0; i < 20; i++) {
//        sum = sum + a[i];
//        printf("a[%d] = %d\n", i, a[i]);
//    }
//    for (int j = 0; j < 19; j++) {
//        
//  
//    for (int i = 0; i < 19 - j; i++) {
//        if (a[i] > a[i + 1]) {
//            int temp = a[i];
//            a[i] = a[i + 1];
//            a[i + 1] = temp;
//        }}
//    }
//    float ping = 1.0 * sum / 20;
//    printf("max = %d,min = %d,\nsum = %d,\nping = %.2f",a[19], a[0], sum, ping);
    /////////////////////
//    //6.6
//    int a[5] = {21, 54, 32, 15, 94};
//    int b[5] = {68, 43, 21, 35, 48};
//    int c[10] = {0};
//        for (int i = 0; i < 4; i++) {
//            for (int j = 0; j < 4 - i; j++) {
//                if (a[j] > a[j + 1]) {
//                    int temp = a[j];
//                    a[j] = a[j + 1];
//                    a[j + 1] = temp;
//                }
//                if (b[j] > b[j + 1]) {
//                    int help = b[j];
//                    b[j] = b[j + 1];
//                    b[j + 1] = help;
//                }
//            }    }
//    for (int i = 0; i < 5; i++) {
//        printf("a[%d] = %d,b[%d] = %d\n", i, a[i], i,  b[i]);
//    }
//   
//    for (int i = 0; i < 5 ; i++) {
//        c[i] = a[i];
//        c[i + 5] = b[i];
//        }
//    for (int i = 0; i < 10; i++) {
//        printf("c[%d] = %d \n", i, c[i]);
//    }
//    printf("\n\n\n");
//    for (int i = 0; i < 9; i++) {
//        for (int j = 0; j < 9 - i; j++) {
//            if (c[j] > c[j + 1]) {
//                int temp = c[j];
//                c[j] = c[j + 1];
//                c[j + 1] = temp;
//            }}}
//    for (int i = 0; i < 10; i++) {
//        printf("c[%d] = %d \n", i, c[i]);
//    }
    /////////////////////
    //6.7
//    int m[12] = {31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
//    int a = 0, b = 0, c = 0, day = 0;
//    scanf("%d%d%d", &a, &b, &c);
//   
//    if (a % 4 == 0 && a % 100 != 0) {
//        m[1] = 29;
//        }
//    else if (a % 400 == 0){
//        m[1] = 29;
//        }
//    else m[1] = 28;
//    for (int i = 0; i < b - 1; i++) {
//        day = day + m[i];
//    }
//     if(b < 1 || b > 12 || c > m[b - 1] || c < 1){printf("输入有误\n");}
//    day = day + c;
//    printf("%d年%d月%d日是%d年的第%d天\n", a, b, c, a, day);
    /////////////////////////////////
    //6.8
//    int a[100] = {0};
//    for (int i = 0;  i < 100; i++) {
//        a[i] = arc4random()%(550 - 450 + 1) + 450;
//        printf("%d ",a[i]);
//    }
//    for (int i = 0; i < 99; i++) {
//        for (int j = 0; j < 99 - i; j++) {
//            if (a[j] > a[j + 1]) {
//               int temp = a[j];
//                a[j] = a[j + 1];
//                a[j + 1] = temp;
//            }
//        }
//    }
//    printf("\n\n");
//    for (int i = 0; i < 100; i++) {
//        printf("%d ",a[i]);
//    }
    ///////////////////////
    //6.9
//    int a[] = {5, -9, 32, 77, 64, -24, 14, 0, 21, 45};
//    int b[10] = {0};
//    for (int i = 0; i < 10; i++) {
//        b[i] = a[i];
//    }
//    for (int i = 0; i < 9; i++) {
//        for (int j = 0; j < 9 - i; j++) {
//            if (a[j] > a[j + 1]) {
//                int temp = a[j];
//                a[j] = a[j + 1];
//                a[j + 1] = temp;
//            }
//        }
//    }
//        printf("max = %d,min = %d\n", a[9], a[0]);
//        for (int i = 0; i < 10; i++) {
//            if (a[9] == b[i]) {
//                printf("%d是最大值的下标\n",i);
//            }
//            if (a[0] == b[i]) {
//                printf("%d是最小值的下标",i);
//          }
//        }
///////////////////////
    //6.10
//    char result[50] = {0};
//    char str1[] = "lanou ";
//    char str2[] = "23_class ";
//    char str3[] = "is niu best!";
//    strcat(result, str1);
//    strcat(result, str2);
//    strcat(result, str3);
//    
//    printf("%s", result);
    //////////////////////////////
    //////////////////////////////
    
    //////////////////////////
    ///////////////////////////
    //设计简易学生系统
//    int a[100] = {0};
//    int n = 0, hao = 0, fen = 0;
//    printf("简易学生系统\n\n");
//    printf("1:添加同学\n2:查找同学\n3:修改学生信息\n4:删除学生信息\n5:退出系统\n");
//    for (int i = 0; i > -1 ; i++) {
//    printf("请输入功能选项\n");
//    scanf("%d", &n);
//    switch (n) {
//        case 1:
//            printf("添加：请输入学号学分\n");
//            scanf("%d%d", &hao, &fen);
//            if (hao > 0 && hao <= 100 && a[hao - 1] ==0) {
//                a[hao - 1] = fen;
//                printf("添加成功\n");
//            }
//            else if (a[hao - 1] != 0){
//                printf("你输入的学号已有学分\n");
//            }
//            else
//            printf("请输入1到100以内的数\n");
//            break;
//        case 2:
//            printf("查找：请输入学号\n");
//            scanf("%d", &hao);
//            if (hao > 0 && hao <= 100 && a[hao - 1] != 0) {
//            printf("学号为%d的同学学分为%d\n", hao, a[hao - 1]);
//            }
//            else if (a[hao - 1] == 0){printf("你输入的学号没有学分，请添加\n");
//            }
//            else printf("请输入1到100以内的数\n");
//            break;
//        case 3:
//            printf(" 修改：请输入学号和新的学分\n");
//            scanf("%d%d", &hao, &fen);
//            if (hao > 0 && hao <= 100 && a[hao - 1] != 0) {
//                a[hao - 1] = fen;
//            printf("修改成功\n");
//            }
//            else if (a[hao - 1] == 0){
//            printf("你输入的学号没有学分，请添加\n");
//            }
//            else printf("请输入1到100以内的数\n");
//            break;
//        case 4:
//            printf("删除：请输入学号\n");
//            scanf("%d", &hao);
//            if (hao > 0 && hao <= 100 && a[hao - 1] != 0) {
//                a[hao - 1] = 0;
//            printf("删除成功\n");
//            }
//            else if (a[hao - 1] == 0){
//            printf("你输入的学号没有学分，请添加\n");
//            }
//            else printf("请输入1到100以内的数\n");
//            break;
//        case 5:
//            printf("已退出程序\n");
//            i = -5;
//            break;
//        default:
//            printf("没有该选项");
//            break;
//    }
//    }
//    /////////////////////////////////
           //1！＋2！＋3！＋4！＋5！＋6！＋7！＋8！＋9！循环；
    ///////////

//    int ji = 1, sum = 0;
//    for (int i = 1; i < 10; i++) {
//        ji = i * ji;
//        sum = sum + ji;
//        printf("%d ", sum);
//    }
    /////////////
    //100米落下，反弹一半高度，10次后经过多少米，第十次反弹多高；
    //////////////////////

//    float mi = 100, sum =100;
//    for (int i = 0; i < 10; i++) {
//        mi = mi/ 2;
//        sum = sum + (mi / 2);
//    }
//    printf("%.2f,\n%.2f ", mi, sum);
    ///////////////
    //第一天共n个桃，每天吃一半多一个，第十天想吃时剩一个，求n；
    ////////////
//    int a = 1;
//    for (int i = 0; i < 9; i++) {
//        a = (a + 1) * 2;
//    }
//    
//    printf("%d ", a);
//    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
return 0;
}
