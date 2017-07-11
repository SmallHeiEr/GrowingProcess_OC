//
//  Rectangle.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
- (void)setLength:(CGFloat)length
{
    _length = length;
}
- (CGFloat)length
{
    return _length;
}
- (void)setHigh:(CGFloat)high
{
    _high = high;
}
- (CGFloat)high
{
    return _high;
}
- (void)setArea:(CGFloat)area
{
    _area = area;
}
- (CGFloat)area
{
    return _area;
}
- (instancetype)initWithLength:(CGFloat)lenth high:(CGFloat)high area:(CGFloat)area
{
    self = [super init];
    if (self) {
        [self setLength:lenth];
        [self setHigh:high];
        
    }return self;
}
- (void)info{
    NSLog(@"%lf %lf%lf", _length, _high, _area);

}
@end
