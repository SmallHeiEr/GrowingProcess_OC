//
//  ViewController.m
//  UI1-视图
//
//  Created by dllo on 16/1/12.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    代码写在此处{{{{{{{{{{{{{
    
//    自带视图
    self.view.backgroundColor = [UIColor lightGrayColor];
//   创建画纸
//    开辟对象空间并设置坐标和大小
//    50 - 据左下角的x    100 - 据左上角的y；
//
//    150 - 宽度         180 - 高度
//    
//    
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 150, 180)];
    //view1.backgroundColor = [UIColor brownColor];
//    自定义颜色
    view1.backgroundColor = [UIColor colorWithRed:71 / 255.0 green:arc4random() % 256 / 255.0 blue:211 / 255.0 alpha:1];
    
    //单独改变frame
   // view1.frame = CGRectMake(0, 0, 100, 100);
//    改变中心点坐标
    view1.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
//    是否隐藏视图
    view1.hidden = NO;
    
//    改变视图透明度
    view1.alpha = 0.5;
//    将画纸view1贴到自带画纸上
//    self.view是view1的父视图
//    view1是self.view的子视图
    [self.view addSubview:view1];
    [view1 release];
//    获取父视图
    //UIView *superV = view1.superview;
//    改变父视图的背景色
    //superV.backgroundColor = [UIColor yellowColor];
//   获取子视图
//    subviews为一数组，当执行addSubview将一个视图贴到父视图的时候，会将子视图对象添加到subviews数组中；
    self.view.subviews.firstObject.backgroundColor = [UIColor greenColor];
//    *************************************
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(60, 140, 100, 100)];
    view2.backgroundColor = [UIColor greenColor];
    //addsubview:--添加到最前端
    [self.view addSubview:view2];
    [view2 release];
    
    
    
    
    
//    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
//     view3.backgroundColor = [UIColor colorWithRed:71 / 255.0 green:arc4random() % 256 / 255.0 blue:211 / 255.0 alpha:1];
////    
////    view3.center = view1.center;
////    view3.center = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
//    view3.center = CGPointMake(view1.frame.size.width / 2, view1.frame.size.height / 2);
//    [view1 addSubview:view3];
//    [view3 release];
////    frame 是相对于他的父视图的坐标
////    当把view3添加到一个视图，其坐标及为相对这个视图的坐标；
//    //view3.center = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(90, 130, 100, 100)];
    view4.backgroundColor = [UIColor orangeColor];
//addsubview:--添加到最前端
    [self.view addSubview:view4];
    [view4 release];
//   同一层视图数组中 在view1上边插入view4
    [self.view insertSubview:view4 aboveSubview:view1];
//   同一层视图数组中 在view2下边插入view4
    [self.view insertSubview:view4 belowSubview:view2];
    
    [self.view insertSubview:view4 atIndex:0];
    
    
    [self.view bringSubviewToFront:view2];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
