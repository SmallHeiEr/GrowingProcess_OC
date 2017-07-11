//
//  Plan.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Plan.h"

@implementation Plan
- (instancetype)initWithName:(NSString *)name price:(CGFloat)price size:(NSString *)size
{
    self = [super init];
    if (self) {
        self.name = name;
        self.price = price;
        self.size = size;
    }
    return self;
}
@end
