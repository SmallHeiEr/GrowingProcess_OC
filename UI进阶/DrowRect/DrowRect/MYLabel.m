//
//  MYLabel.m
//  DrowRect
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "MYLabel.h"

@implementation MYLabel


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
//    外部给label设置属性的话，在这里面需要再次设置，否则恢复默认
    [self.text drawAtPoint:CGPointMake(0, 0) withAttributes:@{NSFontAttributeName:self.font}];
}


@end
