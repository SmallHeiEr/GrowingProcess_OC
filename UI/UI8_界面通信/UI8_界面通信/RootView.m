//
//  RootView.m
//  UI8_界面通信
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootView.h"

@implementation RootView
- (void)dealloc
{
    [_content release];
    [super dealloc];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubviews];
    }
    return self;
}
- (void)createSubviews
{
    self.backgroundColor = [UIColor redColor];
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 50, 50)];
    self.label.text = self.content;
    //
    self.label.backgroundColor = [UIColor greenColor];
    [self addSubview:self.label];
    [self.label release];
    
}
//- (void)setContent:(NSString *)content
//{
//    if (_content != content) {
//        [_content release];
//        _content = [content retain];
//    }
//    self.label.text = content;
//}
- (void)setLabelVal:(NSString *)content
{
    self.label.text = content;
}


@end
