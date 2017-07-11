//
//  Student.m
//  UI17_数据库
//
//  Created by dllo on 16/3/3.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)dealloc
{
    [_name release];
    [_sex release];
    [super dealloc];
}
@end
