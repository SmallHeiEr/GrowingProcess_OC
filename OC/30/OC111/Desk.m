//
//  Desk.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Desk.h"

@implementation Desk
- (instancetype)initWithHigh:(CGFloat)high price:(CGFloat)price colour:(NSString *)colour
{
    self = [super init];
    if (self) {
        self.high = high;
        self.price = price;
        self.colour =colour;
    }
    return self;
}
@end
