//
//  main.m
//  C4-数组
//
//  Created by dllo on 15/12/18.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    
    ////////////////
    
//    int a = 0;
//    int b[5]={0};
    //数据类型  变量名 ［变量个数］＝｛初值1，，，，，
    //注，［］内加常量表达式；数组中的元素类型必须相同
    //注，定义数组时一定要制定元素个数，
    //这种形式系统会根据处置个数自动指定元素个数
   // int c[] ={1,2,3};
//    float a[]={1, 2, 3, 4, 5, 6, 7, 8 };
    //char b[4]={'0'};
    //下标
//    for (int i= 0; i<8; i++) {
//        a[i]+=1;
// printf("%f \n",a[i]);
//}
//    
//   遍历
//    int a[20] = {0};
//    for (int i = 0; i < 20; i++) {
//        a[i]=arc4random()%(70-30+1)+30;
//        printf("%d\n",a[i]);
   // }
//
//    int sum =0;
//    int a[20] = {0};
//    for (int i = 0; i < 20; i++) {
//        a[i]=arc4random()%(70-30+1)+30;
//        sum+=a[i];
//         printf("%d ",a[i]);
//    }
//    printf("%d\n",sum);
//
//    int a[5] = {0};
//    int b[5] = {1, 2, 3, 4, 5};
//    printf("int a[5] = {");
//    for (int i = 0; i < 5; i++) {
//        a[i] = b[i];
//        printf("%d, ", a[i]);
//    }
//    printf("}");
    ///////////////////////////
//    int a[10] = {0}, b[10] = {0}, c[10] = {0};
//    for (int i = 0; i < 10; i++) {
//        a[i] = arc4random() % (40 - 20 + 1) + 20;
//        b[i] = arc4random() % (40 - 20 + 1) + 20;
//        c[i] = a[i] + b[i]  ;
//         printf("%d +  ", a[i]);
//         printf("%d  = ", b[i]);
//         printf("%d \n", c[i]);
//    }
/////////////////////////////
 //   数组能不能整体打印出来
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    int a = 0, max = 0;
//    for (int i = 0; i < 10; i++) {
//        a =arc4random()%(40-20+1)+20;
//        
//        printf("%d ",a);
//        max = max > a ? max : a;
//        
//    }printf("%d",max);
//
//    int a = 0, max = 0;
//    for (int i = 0 ;  i < 10 ; i++) {
//        a = arc4random()% (40 - 20 + 1) + 20;
//        printf("%d ", a );
//        max = max > a ? max : a ;
//        
//    }printf("%d", max);
//    int a[4] = {33, 18, 5, 2};
//    for (int i = 0; i < 3; i++) {
//        for (int j = 0; j < 3 - i; j++) {
//            if (a[j] > a[j + 1]) {
//                int temp = a[j];
//                a[j] = a[j + 1];
//                a[j + 1] = temp;
//                
//            }
//        }    }
//    for (int k = 0; k < 4; k++) {
//         printf("%d ", a[k]);
//    }
   
//    int a[10] = {0};
//    for (int i = 0; i < 10; i++) {
//        a[i] = arc4random()%(40 - 20 + 1) + 20;
//   
//    printf("%d ", a[i]); }
//    for (int i = 0; i < 9; i++) {
//        for (int j = 0; j < 9 - i; j++) {
//            if (a[j] > a[j + 1]) {
//                int temp = a[j];
//                a[j] = a[j + 1];
//                a[j + 1] = temp;
//
//           }
//        }    }
//    printf("\n排序后\n");
//    for (int k = 0; k < 10; k++) {
//        printf("%d ", a[k]);
//    }
//
    
    
    
//    
//    int a[10] = {0};
//    for (int i = 0; i < 10; i++){
//        a[i] = arc4random()%(100 - 10 + 1) + 10;
//        printf("%d ", a[i]);
//        }
//    
//    for(int i = 0; i < 9 ; i++){
//        for(int j = 0; j < 9 - i; j++){
//            if(a[j] > a[j + 1]){
//                
//                int c = 0;
//                c = a[j];
//                a[j + 1] = a[j];
//             
//               
//            }
//        }
//    
//    }
//    printf("\n");
//    for(int k = 0; k < 10; k++){
//    
//        printf("%d ", a[k]);
//    }
//    
//
//    
     char a[] = "time";
////    strlen()    字符串长度
//    long len = strlen(a);
//    printf("%ld \n",len);
////    strcpy()    字符串拷贝
//    char b[5] = {0};
//    strcpy(b, a);
//    printf("%s",b);
////    strcat()    字符串拼接         strcmp
//   char c[10] = "xiao";
//    strcat(c, a);
//    printf("\n%s",c);              strlen strcpy strcmp strcat
//    strcmp()    字符串比较         strlen strcpy strcmp strcat
    char d[10] = "xiao";          // strlen strcpy strcmp strcat
    int ret = strcmp(d, a);
    printf("\n%d", ret);
   // a[1] == 1[a];
  /////////////////////////////////
    //
//    int a[10] = {0};
//    for (int i = 0; i < 10; i++) {
//        a[i] = arc4random() % (50 - 30 + 1) + 30;
//        printf("%d ", a[i]);
//    }
//        printf("\n");
//    for (int i = 0; i < 9; i++) {
//        for (int j = 0; j < 9 - i; j++) {
//            if (a[j] > a[j + 1]) {
//                int b = a[j];
//                a[j] = a[j + 1];
//                a[j + 1] = b;
//            }
//        }
//    }
//    for (int k = 0; k < 10; k++) {
//        printf("%d ", a[k]);
//    }
   ///////////
//
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
    
    
    printf("\n");
    return 0;
}
