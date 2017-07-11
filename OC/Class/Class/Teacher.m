//
//  Teacher.m
//  Class
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age className:(NSString *)className
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.className = className;
    }
    return self;
}

@end
