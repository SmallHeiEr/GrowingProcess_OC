//
//  Func.h
//  作业8
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
struct course {
    char name[50];
    float mark;
};
typedef struct course cour;

struct student {
    char name[50];
    int hao;
    cour shu ;
    cour yu;
    cour ying;
};
typedef struct student stu;
//void ping();
//void poss();
void compare(stu A, stu B);







