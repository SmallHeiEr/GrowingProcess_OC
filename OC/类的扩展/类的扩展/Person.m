//
//  Person.m
//  类的扩展
//
//  Created by dllo on 16/1/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Person.h"
//管理私有的声明和属性，不希望外面访问
@interface Person ()


@property (nonatomic, copy) NSString *phone;

- (NSInteger)compareNum1:(NSInteger)num1 num2:(NSInteger)num2;

@end



@implementation Person
- (instancetype)initWithName:(NSString *)name sex:(NSString *)sex
{
    self = [super init];
    if (self) {
        self.name = name;
        self.sex = sex;
    }
    return self;
}

- (void)info
{
    NSLog(@"%@ %@", self.name, self.sex);
}
- (NSInteger)compareNum1:(NSInteger)num1 num2:(NSInteger)num2
{
    return num1 > num2 ? num1 : num2;
}
- (NSInteger)compareNum1:(NSInteger)num1 num2: (NSInteger)num2 num3:(NSInteger)num3
{
    NSInteger max = [self compareNum1:num1 num2:(NSInteger)num2];
    return [self compareNum1:max num2:num3];
}











@end
