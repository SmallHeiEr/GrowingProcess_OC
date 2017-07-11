//
//  RootView.m
//  UI8 - 界面通信之协议代理
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootView.h"

@implementation RootView
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
   self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button.frame = CGRectMake(50, 100, 50, 50);
    [self.button setTitle:@"点我" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.button];

}
- (void)buttonAction
{
    //相当于[rootVC changeColor]
    [self.delegate changeColor:[UIColor cyanColor]];
}




@end
