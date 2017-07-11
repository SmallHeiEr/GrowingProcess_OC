//
//  ViewController.m
//  UI4_扩展
//
//  Created by TravelRound on 16/1/15.
//  Copyright © 2016年 TravelRound. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (nonatomic, retain) FirstViewController *firstVC;
@property (nonatomic, retain) SecondViewController *secondVC;
@property (nonatomic, retain) UISegmentedControl *seg;

@end

@implementation ViewController

- (void)dealloc
{
    [_firstVC release];
    [_secondVC release];
    [_seg release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
#warning 扩展1 - 点击button切换图片
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 300, 200, 50);
    [button setBackgroundImage:[UIImage imageNamed:@"login_btn_normal.png"] forState:UIControlStateNormal];
    // 实现点击切换图片效果 - 高亮状态
    [button setBackgroundImage:[UIImage imageNamed:@"login_btn_press.png"] forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
#warning 扩展3 - 简单信息存储本地
    // 用来向本地存储一些简单信息
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    
    // 存入bool类型数据
    [userD setBool:YES forKey:@"isLogin"];
    NSLog(@"%d", [userD boolForKey:@"isLogin"]);
    
//    // 存入数据
////    [userD setObject:@"龙龙" forKey:@"name"];
//    // 删除数据
//    [userD removeObjectForKey:@"name"];
//    // 读取数据
//    NSLog(@"%@", [userD objectForKey:@"name"]);
    
    

    
#warning 扩展5 - 容器视图控制器
    // 容器视图控制器
    
    self.secondVC = [[SecondViewController alloc] init];
    // 将VC添加的原因:
    // 1, 事件沿VC传递
    // 2, 防止VC释放而所属V未释放
    [self addChildViewController:self.secondVC];
    [self.view addSubview:self.secondVC.view];
    [_secondVC release];
    
    self.firstVC = [[FirstViewController alloc] init];
    [self addChildViewController:self.firstVC];
    [self.view addSubview:self.firstVC.view];
    [_firstVC release];
    
    self.seg = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"界面1", @"界面2", @"界面3", nil]];
    self.seg.frame = CGRectMake(100, 100, 150, 30);
    // 起始选中状态
    self.seg.selectedSegmentIndex = 0;
    // 注意触发方式
    [self.seg addTarget:self action:@selector(segAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.seg];
    [_seg release];
    
}

- (void)segAction:(UISegmentedControl *)sender
{
    NSLog(@"选择的item的下标:%ld", sender.selectedSegmentIndex);
    if (0 == sender.selectedSegmentIndex) {
        [self.view bringSubviewToFront:self.firstVC.view];
    }
    if (1 == sender.selectedSegmentIndex) {
        [self.view bringSubviewToFront:self.secondVC.view];
    }
    // 每次都将UISegmentedControl移到最前端
    [self.view bringSubviewToFront:self.seg];
}

- (void)buttonAction:(UIButton *)sender
{
#warning 扩展2 - 提示框
    // 提示框
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"注意" message:@"您的手机将要爆炸" preferredStyle:UIAlertControllerStyleAlert];

    // 添加按钮
    // 参数1 : 标题
    // 参数2 : 样式
    // 参数3 : 当点击按钮会自动进入参数3的block中进行处理
    UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        // 点击确认改变背景色
        self.view.backgroundColor = [UIColor redColor];
        
    }];
    // 将按钮添加到提示框
    [alertC addAction:alertA];
    
    
    UIAlertAction *alertA1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        // 点击确认改变背景色
        self.view.backgroundColor = [UIColor greenColor];
        
    }];
    // 将按钮添加到提示框
    [alertC addAction:alertA1];
    
    // 弹出提示框
    [self presentViewController:alertC animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
