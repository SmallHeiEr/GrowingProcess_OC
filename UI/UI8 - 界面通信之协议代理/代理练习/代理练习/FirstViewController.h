//
//  FirstViewController.h
//  代理练习
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FirstViewControolDelegate <NSObject>

- (void)changeColor:(UIColor *)color;

@end


@interface FirstViewController : UIViewController
@property (nonatomic, assign)id<FirstViewControolDelegate>delegate;
- (void)changeColor1:(UIColor *)color;
@end
