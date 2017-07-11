//
//  Contact.m
//  字典
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName:(NSString *)name sex:(NSString *)sex phone:(NSInteger)phone address:(NSString *)address group:(NSString *)group age:(NSInteger)age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.sex = sex;
        self.phone = phone;
        self.address = address;
        self.group = group;
        self.age = age;
    }
    return self;
}





- (void)info
{
    NSLog(@"%@%@%ld%@%@%ld", self.name, self.sex, self.phone, self.address, self.group, self.age);
}
@end
