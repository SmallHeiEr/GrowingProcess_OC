//
//  Func.m
//  内存
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Func.h"

long chang(char *p){
    if (NULL == p) {
        return -1;
    }
    for (int i = 0; ; i++) {
        if ('\0' == p[i]) {
            printf("%d\n", i);
            return i;
        }
    }
    
}