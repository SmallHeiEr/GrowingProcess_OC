//
//  main.m
//  Class
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"
#import "OurClass.h"
int main(int argc, const char * argv[]) {
//    实现班级信息程序
//    1、定义3个类:OurClass、Teacher、Student。
//    2、Teacher类,属性:姓名、年龄、班级, 方法:考试(exam:)。
//    3、Student类,属性:姓名、年龄、学号、成绩, 方法:比较年龄。
//    4、OurClass类,属性:老师、学生 ,方法:添加学生和移除学生 。
//    提示 :
//    1、Person类作为Student、Teacher类的父类,公共属性和方法写在Person 类中
//    2、Student的成绩为NSMutableDictionary类型,存储课程名称和成绩。
//    3、Teacher的考试内部实现随机为班级每个学生的某一科赋值。
//    4、OurClass的学 生为NSMutableArray类型,内部存Student的对象。

    
    NSMutableDictionary *dic1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:87, @"yuwen", nil];
    NSMutableDictionary *dic2 = [NSMutableDictionary   dictionaryWithObjectsAndKeys:94, @"yuwen", nil];
    NSMutableDictionary *dic3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:76, @"yuwen", nil];
    Student *stu1 = [[Student alloc] initWithName:@"xiaoming" age:23 number:15 course:dic1];
    Student *stu2 = [[Student alloc] initWithName:@"xiaohong" age:22 number:16 course:dic2];
    Student *stu3 = [[Student alloc] initWithName:@"xiaofang" age:24 number:17 course:dic3];
    NSMutableArray *stuArr = [[NSMutableArray alloc] initWithObjects:stu1, stu2, stu3, nil];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
