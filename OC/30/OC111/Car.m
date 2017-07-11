//
//  Car.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Car.h"

@implementation Car
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}
- (void)setColour:(NSString *)colour
{
    _colour = colour;
    
}
- (NSString *)colour
{
    return _colour;
}
- (void)price:(CGFloat)price
{
    _price = price;
}
- (CGFloat)price
{
    return _price;
}
- (instancetype)initWithName:(NSString *)name colour:(NSString *)colour price:(CGFloat)price
{
    self = [super init];
    if (self) {
        [self setName:name];
        [self setColour:colour];
        [self setPrice:price];
    }return self;
}















@end
