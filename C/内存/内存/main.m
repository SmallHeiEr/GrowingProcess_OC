//
//  main.m
//  内存
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Func.h"
void test (){
}
int main(int argc, const char * argv[]) {
    int a = 0;
    printf("栈区%p\n", &a);
    int *p = 0;
    printf("堆区%p\n", p);
    static int b = 0;
    printf("静态区%p\n", &b);
    char *str = "aaa";
     printf("常量区%p\n", str);
//    void test(void){.....}
//     printf("代码区%p\n", test);
//    在堆区开辟一个空间
//    返回值为开辟的空间地址 ＝ malloc（指定开辟的大小，单位字节）
//    int *p  = malloc(4);
//    更兼容的写法
//    int *p = malloc(sizeof(int));
//    //操作分配的堆内存；
//    *p = 3;
//    printf("%d\n", *p);
//    
//    char *p = malloc(sizeof(char));
//    //操作分配的堆内存；
//    *p = 'f';
//    printf("%c\n", *p);
//    float *p = mallo(sizeof(float));
//    //操作分配的堆内存；
//    *p = 3;
//    printf("%f\n", *p);
//
//   char str[] = "long2long8";
//    int a = 0;
//    for (int i = 0; i < strlen(str); i++) {
//        if (str[i] > '0' && str[i] < '9') {
//            a++;
//    }
//        }
//    char *p = malloc(sizeof(char) *  (a + 1));
//    char *q = p;
//    for (int i = 0; i < strlen(str); i++) {
//        if (str[i] > '0' && str[i] < '9') {
//           *p = str[i];   p++;
//   }
//        }
////    *p = '\0';
//    p = q;
//     printf("%s\n", p);
   // char *words[3] = {0};
    
//    char a[10] = {0};
//    char *p[3] = {NULL};
//    for (int i = 0; i < 3; i++) {
//        scanf("%s", a);
//   p[i] = malloc(sizeof(char) * (strlen(a + 1)));
//    
//    strcpy(p[i], a);
//       
//    }
//
//    for (int i = 0; i < 3; i++) {
//        printf("%s", p[i]);
//    }
//    //堆区开辟的空间需手动释放；free（要释放空间的地址）
 //   注意：每一个malloc对应一个free
//    for (int i = 0; i < 3; i++) {
//        free(p[i]);
//        p[i] = NULL;
//    }
//   // 开空间不清零
//    int * p = malloc(sizeof(int) * 3);
//    //清零
//    int *q = calloc(3, sizeof(int));
//    //指定地址开空间
//    int *k = realloc(指定地址, 大小);
//    //释放
//    realloc(, <#size_t#>)
    
    
    
    
    
    
    
    
    
    return 0;
}
