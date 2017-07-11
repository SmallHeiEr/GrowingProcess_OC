//
//  MyOperation.m
//  UI_22线程
//
//  Created by dllo on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "MyOperation.h"

@implementation MyOperation
//会自动识别main函数去执行
- (void)main
{
    for (NSInteger i = 0; i < 6000; i++) {
        NSLog(@"op3线程：%ld", i);
    }
}


@end
