//
//  Student.m
//  UI18_FMDB
//
//  Created by dllo on 16/3/4.
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
