//
//  Tea.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Tea.h"

@implementation Tea
- (instancetype)initWithName:(NSString *)name price:(CGFloat)price use:(NSString *)use
{
    self = [super init];
    if (self) {
        self.name = name;
        self.price = price;
        self.use = use;
    }
    return self;
}
@end
