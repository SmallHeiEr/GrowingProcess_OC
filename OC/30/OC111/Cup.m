//
//  Cup.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Cup.h"

@implementation Cup
- (instancetype)initWithPrice:(CGFloat)price colour:(NSString *)colour size:(NSString *)size

{
    self = [super init];
    if (self) {
        self.price = price;
        self.colour = colour;
        self.size = size;
    }
    return self;
}
@end
