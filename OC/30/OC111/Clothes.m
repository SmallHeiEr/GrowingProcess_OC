//
//  Clothes.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Clothes.h"

@implementation Clothes
- (instancetype)initWithBrand:(NSString *)brand colour:(NSString *)colour price:(CGFloat)price
{
    self = [super init];
    if (self) {
        self.brand = brand;
        self.colour = colour;
        self.price = price;
    }
    return self;
}
@end
