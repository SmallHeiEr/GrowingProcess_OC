//
//  Iphone.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Iphone.h"

@implementation Iphone
- (instancetype)initWithName:(NSString *)name number:(NSString *)number area:(NSString *)area
{
    self = [super init];
    if (self) {
        self.name = name;
        self.number = number;
        self.area = area;
    }
    return self;
}
@end
