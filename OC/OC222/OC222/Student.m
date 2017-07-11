//
//  Student.m
//  OC222
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Student.h"

@implementation Student
//属性的实现
//@synthesize 属性名 ＝ 成员变量名
//代表这个属性生成的setter／getter方法是给哪个成员变量取值和赋值
//@synthesize name = _name;

- (void)info{
    NSLog(@"%@ %@ %ld %.lf %.1lf", _name, _genter, _age, _number, _mark);
}
-(instancetype)initWithName:(NSString *)name genter:(NSString *)genter age:(NSInteger)age number:(CGFloat)number mark:(CGFloat)mark;
{
    self = [super init];
    if (self) {
        self.name = name;
        self.genter = genter;
        self.age = age;
        self.mark = mark;
        self.number = number;

        
//        [self setName:name];
//        [self setGenter:genter];
//        [self setAge:age];
//        [self setNumber:number];
//        [self setMark:mark];
    }

    return self;
}

- (void)dealloc{
    [_name release];
    [super dealloc];
}


@end
