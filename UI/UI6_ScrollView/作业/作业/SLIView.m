//
//  SLIView.m
//  作业
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SLIView.h"

@implementation SLIView

- (void)dealloc
{
    [_imageV release];
    [_label1 release];
    [_label2 release];
    [super dealloc];
}
- (void)setup
{
self.imageV =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width / 3, self.frame.size.width / 3)];
[self addSubview:self.imageV];
[self.imageV release];

self.label1 = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width / 3, 10, self.frame.size.width / 3 * 2 - 10, 30)];

[self addSubview:self.label1];
[self.label1 release];
self.label2 = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width / 3,  self.frame.size.height / 3 + 20, self.frame.size.width / 3 * 2 - 10, self.frame.size.height / 3)];
[self addSubview:self.label2];
[self.label2 release];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}










@end
