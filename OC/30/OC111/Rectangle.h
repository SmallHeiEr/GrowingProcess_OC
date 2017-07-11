//
//  Rectangle.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    CGFloat _length;
    CGFloat _high;
    CGFloat _area;
}
- (void)setLength:(CGFloat)length;
- (CGFloat)length;
- (void)setHigh:(CGFloat)high;
- (CGFloat)high;
- (void)setArea:(CGFloat)area;
- (CGFloat)area;
- (instancetype)initWithLength:(CGFloat)lenth high:(CGFloat)high area:(CGFloat)area;
- (void)info;





@end
