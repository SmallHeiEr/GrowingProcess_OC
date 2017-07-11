//
//  MYView.m
//  DrowRect
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "MYView.h"

@implementation MYView


- (void)drawRect:(CGRect)rect {
//    画线
//    [self drawLine];
////    画三角形
//    [self drawSanJiao];
////    矩形
//    [self drawJuXing];
////    弧+扇形
//    [self drawHu];
////    圆
//    [self drawYuan];
////    线宽圆
//    [self drawPropertyYuan];
//    实心
    [self drawShiXin];
}

- (void)drawLine
{
//  1.获取图形上下文(获取画笔)
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
//    2.设置图形信息
//      设置起始点
    CGContextMoveToPoint(ref, 50, 50);
    
//      设置终点
//          画线到某一个点
    CGContextAddLineToPoint(ref, 150, 150);
    
//    3.渲染到view上（开始画）
    CGContextStrokePath(ref);
    
}
- (void)drawSanJiao
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ref, 200, 200);
    CGContextAddLineToPoint(ref, 350, 350);
    CGContextAddLineToPoint(ref, 50, 350);
    
    //    闭合（自动连回起始点）
    CGContextClosePath(ref);
    CGContextStrokePath(ref);
}
- (void)drawJuXing
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextAddRect(ref, CGRectMake(50, 50, 200, 200));
    CGContextStrokePath(ref);
}
- (void)drawHu
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ref, 150, 150);
//    画笔，圆心，半径，起始角度，终点角度，顺逆（0:顺）
    CGContextAddArc(ref, 50, 50, 100, 0, M_PI_2, 0);
    CGContextClosePath(ref);
    CGContextStrokePath(ref);
}
- (void)drawYuan
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ref, CGRectMake(100, 100, 50, 50));
    CGContextStrokePath(ref);
}
- (void)drawPropertyYuan
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
//  线的颜色
//    CGContextSetRGBStrokeColor(ref, 0.15, 1, 1, 1);
    [[UIColor blackColor] set];//drawRect内使用
//    线的宽度
    CGContextSetLineWidth(ref, 10);
    CGContextAddEllipseInRect(ref, CGRectMake(100, 100, 50, 50));
    CGContextStrokePath(ref);
}
- (void)drawShiXin
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ref, 200, 200);
    CGContextAddLineToPoint(ref, 350, 350);
    CGContextAddLineToPoint(ref, 50, 350);
    
    //    闭合（自动连回起始点）
    CGContextClosePath(ref);
  
    
//    改颜色有点不同
    [[UIColor yellowColor] setFill];
//    CGContextSetFillColor(<#CGContextRef  _Nullable c#>, <#const CGFloat * _Nullable components#>)
    
      CGContextFillPath(ref);
}

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    [self setNeedsDisplay];
}



























@end
