//
//  NewsModel.m
//  MVVM_1
//
//  Created by 李东旭 on 16/4/19.
//  Copyright © 2016年 李东旭. All rights reserved.
//

#import "NewsCellModel.h"

@implementation NewsCellModel


+ (NSDictionary *)objectClassInArray{
    return @{@"ads" : [Ads class], @"imgextra" : [Imgextra class]};
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}


@end
@implementation Ads

@end


@implementation Imgextra

@end