//
//  Student.m
//  UI9__tableView
//
//  Created by dllo on 16/1/22.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Student.h"
@implementation Student
- (void)dealloc
{
    [_name release];
    [_phone release];
    [super dealloc];
}
@end
