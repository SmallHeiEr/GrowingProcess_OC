//
//  ViewController.m
//  UI3--视图控制器
//
//  Created by dllo on 16/1/14.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController
//视图将出现
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:(BOOL)animated];
    NSLog(@"%s", __func__);
}
//装载load
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor greenColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 100, 50, 30);
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame = CGRectMake(200, 100, 50, 30);
    [button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button3 setTitle:@"第三页" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(buttomAction3:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button3];
    NSLog(@"%s", __func__);
    
    
    
}
- (void)buttomAction:(UIButton *)sender
{//创建视图控制器
    //视图控制器为抽象类，本身不可用，需要用其子类
//    视图控制器不具备显示能力，是用来管理视图的
    FirstViewController *firstVC = [[FirstViewController alloc] init];
//    切换到firstVC界面
//    当执行完buttonAction方法后才会真正切换
//    调用此方法会引起计数增加
    [self presentViewController:firstVC animated:YES completion:^{
        NSLog(@"切换之后执行此处");
        
    }];
    NSLog(@"%d", __LINE__);
    [firstVC release];

}
- (void)buttomAction3:(UIButton *)sender
{
    SecondViewController *SecondVC = [[SecondViewController alloc] init];
    [self presentViewController:SecondVC animated:YES completion:^{
    }];
    [SecondVC release];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
