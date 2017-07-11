//
//  Socks.m
//  OC111
//
//  Created by dllo on 16/1/3.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Socks.h"

@implementation Socks
- (instancetype)initWithSize:(NSString *)size price:(CGFloat)price colour:(NSString *)colour
{
    self = [super init];
    if (self) {
        self.size = size;
        self.price = price;
        self.colour =colour;
    }
    return self;
}
@end
