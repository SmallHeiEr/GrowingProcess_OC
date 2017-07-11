//
//  Vegetable.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Vegetable.h"

@implementation Vegetable
- (instancetype)initWithName:(NSString *)name price:(CGFloat)price colour:(NSString *)colour
{
    self = [super init];
    if (self) {
        self.name = name;
        self.price = price;
        self.colour = colour;
    }
    return self;
}
@end
