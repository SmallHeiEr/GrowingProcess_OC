//
//  Person.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age gender:(NSString *)gender
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.gender = gender;
    }
    return self;
}
@end
