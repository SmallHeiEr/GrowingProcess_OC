//
//  Colour.m
//  作业0.0
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Colour.h"

@implementation Colour
- (instancetype)initWithName:(NSString *)name colourValue:(NSString *)colourValue
{
    self = [super init];
    if (self) {
        self.name = name;
        self.colourValue =colourValue;
    }
    return self;
}
- (void)info
{
    NSLog(@"%@", self.name);
}
- (void)addcolo:(Colour *)per contact:(NSMutableDictionary *)contact
{
    NSString *str = [per.name substringToIndex:1];
    NSMutableArray *arrTemp = [contact objectForKey:str];
    if (nil == arrTemp) {
        //        创建数组
        arrTemp = [NSMutableArray array];
        //        将数组加进字典
        [contact setObject:arrTemp forKey:str]  ;
    }
    //    添加
    [arrTemp addObject:per];
}

    
    














@end
