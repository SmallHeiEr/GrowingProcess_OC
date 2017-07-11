//
//  Model.m
//  UI21_不规则瀑布流
//
//  Created by dllo on 16/3/9.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Model.h"

@implementation Model
- (void)dealloc
{
    [_height release];
    [_width release];
    [_thumbURL release];
    [super dealloc];
}
@end
