//
//  MYTextView.m
//  DrowRect
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "MYTextView.h"

@interface MYTextView ()<UITextViewDelegate>

@end
@implementation MYTextView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//rect是TextView的frame
- (void)drawRect:(CGRect)rect
{
    self.delegate = self;
    
    if (self.hasText) {
//        [self.text drawAtPoint:CGPointMake(0, 0) withAttributes:nil];
    } else {
    
    [_plText drawAtPoint:CGPointMake(5, 10) withAttributes:nil];
    }
}
- (void)textViewDidChange:(UITextView *)textView
{
    //重新绘制（触发drawRect方法）
    [self setNeedsDisplay];
//    _plText =@"";
}

@end
