//
//  Student.m
//  UI1_解析
//
//  Created by dllo on 16/2/29.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)dealloc
{
    [_name release];
    [_sex release];
    [_number release];
    [_phone release];
    [super dealloc];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}



@end
