//
//  Orange.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Orange.h"

@implementation Orange
- (instancetype)initWithColour:(NSString *)colour weight:(CGFloat)weight price:(CGFloat)price
{
    self = [super init];
    if (self) {
        self.colour = colour;
        self.weight = weight;
        self.price = price;
    }
    return self;
}
@end
