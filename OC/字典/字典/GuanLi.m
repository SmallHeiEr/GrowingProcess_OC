//
//  GuanLi.m
//  字典
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "GuanLi.h"
#import "Contact.h"
@implementation GuanLi
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.manage = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)addPer:(Contact *)per 
{
    if (0 == per.name.length || 0 == per.phone) {
        NSLog(@"weikong");
        return;
    }
    NSString *str = [per.name substringToIndex:1];
    NSMutableArray *arrTemp = [self.manage objectForKey:str];
    if (nil == arrTemp) {
        //        创建数组
        arrTemp = [NSMutableArray array];
        //        将数组加进字典
        [self.manage setObject:arrTemp forKey:str];
    }
    //    添加
    [arrTemp addObject:per];
}




@end
