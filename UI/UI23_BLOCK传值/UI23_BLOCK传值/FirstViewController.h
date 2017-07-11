//
//  FirstViewController.h
//  UI23_BLOCK传值
//
//  Created by dllo on 16/3/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
#warning block传值2 － 定义copy类型属性， 接收第一界面传递的地址
@property (nonatomic, copy)void (^myBlock)(UIColor *);
//- (void)getBlock:(void (^)(UIColor *))block;
//- (void)setMyBlock:(UIColor *)color;

@end
