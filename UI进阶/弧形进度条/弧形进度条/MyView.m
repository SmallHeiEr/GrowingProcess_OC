//
//  MyView.m
//  弧形进度条
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "MyView.h"

@implementation MyView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self drawYuanHuWith:_pi];
}
- (void)drawYuanHuWith:(CGFloat)pi
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ref, 414 / 2, 736 / 2);
    CGContextAddArc(ref, 414 / 2, 736 / 2, 100, -M_PI_2, pi, 0);
    CGContextClosePath(ref);
    [[UIColor cyanColor] setFill];
    CGContextFillPath(ref);
}
- (void)setPi:(CGFloat)pi
{
    _pi = pi;
    [self setNeedsDisplay];
}
@end
