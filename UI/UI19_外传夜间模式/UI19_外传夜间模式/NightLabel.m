//
//  NightLabel.m
//  UI19_外传夜间模式
//
//  Created by dllo on 16/3/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "NightLabel.h"

@implementation NightLabel
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"night" object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self  name:@"day" object:nil];
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
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    BOOL isNight = [userD boolForKey:@"isNight"];
    if (YES == isNight) {
        self.textColor = [UIColor blueColor];
    }
    else {
        self.textColor = [UIColor orangeColor];
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nightAction) name:@"night" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dayAction) name:@"day" object:nil];
    
    
    
}

- (void)nightAction
{
    self.textColor = [UIColor blueColor];
}
- (void)dayAction
{
    self.textColor = [UIColor orangeColor];
}








/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
