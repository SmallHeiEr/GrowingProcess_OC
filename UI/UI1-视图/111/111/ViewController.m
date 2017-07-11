//
//  ViewController.m
//  111
//
//  Created by dllo on 16/1/12.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    aView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:aView];
    [aView release];
    
    UIView *bView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 300, 548)];
    bView.backgroundColor = [UIColor greenColor];
//    为bView 添加标签, 注意值 较小的标签值系统会占用
//    故自添加的值尽量大些
    bView.tag = 10001;
    
    [self.view addSubview:bView];
     [bView release];
    UIView *cView = [[UIView alloc] initWithFrame:CGRectMake(55, 66, 150, 350)];
    cView.backgroundColor = [UIColor redColor];
    [self.view addSubview:cView];
     [cView release];
    UIView *dView = [[UIView alloc] initWithFrame:CGRectMake(66, 77, 100, 250)];
    dView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:dView];
     [dView release];
    UIView *eView = [[UIView alloc] initWithFrame:CGRectMake(88, 99, 50, 100)];
    eView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:eView];
     [eView release];
//    [self.view insertSubview:cView atIndex:1];
//    
//    [self.view insertSubview:dView aboveSubview:aView];
//    [self.view insertSubview:eView belowSubview:bView];
//    将视图eView放到最前面
    [self.view bringSubviewToFront:eView];
//    从父视图中删除
    [dView removeFromSuperview];
//    参数1时间间隔
//    参数2处理方法所属空间
//    参数3处理方法
//    参数4nil
//    参数5是否重复
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    
}
- (void)timerAction
{
    //NSLog(@"longlong");
//    通过标签获取视图
    UIView *view = [self.view viewWithTag:10001];
//    给bView赋值随机颜色
    view.backgroundColor = [UIColor colorWithRed:arc4random() % 256 /255.0 green:arc4random() % 256 /255.0 blue:arc4random() % 256 /255.0 alpha:1];
}





















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
