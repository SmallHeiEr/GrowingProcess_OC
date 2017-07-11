//
//  Person.m
//  排序
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
- (NSComparisonResult)compareWithName:(Person *)per
{
    return [self.name compare:per.name];
}
- (NSComparisonResult)compareWithAge:(Person *)per
{
    if (self.age > per.age) {
        return NSOrderedDescending;
    }
    if (self.age == per.age) {
        return NSOrderedSame;
    }else{
        return NSOrderedAscending;
    }
}
@end
