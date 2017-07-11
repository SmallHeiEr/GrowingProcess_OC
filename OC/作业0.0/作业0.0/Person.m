//
//  Person.m
//  作业0.0
//
//  Created by dllo on 16/1/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
    }
    return self;
}
- (void)addAge:(NSInteger)age per:(Person *)per
{
    
}
@end
