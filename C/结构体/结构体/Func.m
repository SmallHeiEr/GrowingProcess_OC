//
//  Func.m
//  结构体
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Func.h"

void test( struct student per[], int cont){
    for (int i = 0; i < cont; i++) {
        printf("%s %d %.1f\n", per[i].name, per[i].age, per[i].score);
    }
    
}
