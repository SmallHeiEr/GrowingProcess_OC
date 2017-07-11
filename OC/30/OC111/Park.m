//
//  Park.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Park.h"

@implementation Park
- (instancetype)initWithName:(NSString *)name address:(NSString *)address price:(CGFloat)price
{
    self = [super init];
    if (self) {
        self.name = name;
        self.address = address;
        self.price = price;
    }
    return self;
}
@end
