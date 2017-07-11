//
//  Student.m
//  UI_16初级数据持久化
//
//  Created by dllo on 16/3/2.
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
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.sex = [aDecoder decodeObjectForKey:@"sex"];
        self.num = [aDecoder decodeIntegerForKey:@"学号"];
        self.score = [aDecoder decodeDoubleForKey:@"score"];

    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeObject:self.sex forKey:@"sex"];
//    注意，不同类型数据应用不同方法
//    key可以不与属性同名，仅仅用来供反归档时对应
    [coder encodeInteger:self.num forKey:@"学号"];
    [coder encodeDouble:self.score forKey:@"scroe"];

}

@end
