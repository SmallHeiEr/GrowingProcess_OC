//
//  OurClass.h
//  Class
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Teacher;
@class Student;

@interface OurClass : NSObject
@property (nonatomic, copy)  Teacher *teacher;
@property (nonatomic, copy) NSMutableArray *stu;
- (void)addStudent:(Student *)student;
- (void)removeStu:(NSMutableArray *)stu;


@end
