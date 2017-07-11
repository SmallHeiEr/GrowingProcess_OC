//
//  RootView.h
//  UI8 - 界面通信之协议代理
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootViewDelegate <NSObject>

- (void)changeColor:(UIColor *)color;

@end

@interface RootView : UIView
@property (nonatomic, retain)UIButton *button;
@property (nonatomic, assign)id<RootViewDelegate>delegate;

//- (void)buttonAction;


@end
