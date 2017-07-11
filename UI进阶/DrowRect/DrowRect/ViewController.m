//
//  ViewController.m
//  DrowRect
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "MYView.h"
#import "MYLabel.h"
#import "MYTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#warning 作用
//    基于View 二维绘图
//    绘制图片 裁剪图片 绘制图片 自定义UI控件
//    1 获取图形上下文 2 设置一些属性参数 3 绘制到View上
    
//    MYView *view = [[MYView alloc]initWithFrame:self.view.frame];
//    view.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view];
    
//    MYLabel *label = [[MYLabel alloc] initWithFrame:CGRectMake(50, 50, 300, 150)];
//   label.text = @"你好";
//    label.backgroundColor = [UIColor cyanColor];
//    [self.view addSubview:label];
    MYView *text = [[MYView alloc ]initWithFrame:CGRectMake(0, 0, 414, 736)];
    [self.view addSubview:text];
//    text.backgroundColor = [UIColor cyanColor];
//    text.plText = @"请输入文字";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
