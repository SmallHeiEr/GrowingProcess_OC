//
//  Student.m
//  排序
//
//  Created by dllo on 16/1/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Student.h"

@implementation Student
- (instancetype)initWithName:(NSString *)name number:(NSInteger)number mark:(CGFloat)mark
{
    self = [super init];
    if (self) {
        self.name = name;
        self.number = number;
        self.mark = mark;
    }
    return self;
}
- (NSComparisonResult)comWithName:(Student *)stu
{
    return [self.name compare:stu.name];
}
- (NSComparisonResult)comWithNumber:(Student *)stu
{
    if (self.number > stu.number) {
        return NSOrderedDescending;
    }else if (self.number < stu.number)
    {
        return NSOrderedAscending;
    }else{
        return NSOrderedSame;
    }
}
- (NSComparisonResult)comWithMark:(Student *)stu
{
    if (self.mark > stu.mark) {
        return NSOrderedDescending;
    }else if (self.mark < stu.mark)
    {
        return NSOrderedAscending;
    }else{
        return NSOrderedSame;
    }
}
@end
