//
//  Sgfff.m
//  内存
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Sgfff.h"

@implementation Sgfff
//重写系统调用的方法，
//以后再mrc下，若定义了retain／copy的属性
//都需要重写dealloc方法，并将其release写在此处
- (void)dealloc
{
    [_name release];
    [_sex release];
    [super dealloc];
}
@end
