//
//  Fruit.m
//  OC111
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit
- (void)setName:(NSString *)name
{_name = name;
}
- (NSString *)name{
    return _name;
}

- (void)setColour:(NSString *)colour{
    _colour = colour;
}
- (NSString *)colour{
    return _colour;}
- (void)setPrice:(CGFloat)price{
    _price = price;
}
- (CGFloat)price{
    return _price;}
- (instancetype)initWithName:(NSString *)name colour:(NSString *)colour price:(CGFloat)price{
    self = [super init];
    if (self) {
        self.name = name;
        [self setColour:colour];
        [self setPrice:price];
    }
    return self;
}







@end
