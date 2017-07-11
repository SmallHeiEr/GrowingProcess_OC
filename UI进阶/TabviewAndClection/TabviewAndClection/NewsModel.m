//
//  NewsModel.m
//  TabviewAndClection
//
//  Created by dllo on 16/3/22.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "NewsModel.h"

@implementation NewsModel
- (void)dealloc
{
    [_title release];
    [super dealloc];
}
- (void)setValue:(id)value forKey:(NSString *)key
{
    [super setValue:value forKey:key];
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}


@end
