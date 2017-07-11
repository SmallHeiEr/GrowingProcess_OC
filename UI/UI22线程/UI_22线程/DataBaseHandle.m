//
//  DataBaseHandle.m
//  UI_22线程
//
//  Created by dllo on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DataBaseHandle.h"

@implementation DataBaseHandle

+ (instancetype)shareDataBase
{
    static DataBaseHandle *dataBase = nil;
//    if (nil == dataBase) {
//        dataBase = [[DataBaseHandle alloc]init];
//        
//    }
    
//    单例的完美实现
    static dispatch_once_t once = 0;
    dispatch_once(&once, ^{
        
        dataBase = [[DataBaseHandle alloc]init];

    });
    
    return dataBase;
}

@end
