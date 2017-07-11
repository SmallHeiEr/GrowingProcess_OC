//
//  SecondViewController.m
//  UI3--视图控制器
//
//  Created by dllo on 16/1/14.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 50, 30);
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitle:@"上一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(200, 100, 50, 30);
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button2 setTitle:@"返回首页" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(buttomAction2:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button2];
    
    
    
    
    
    
}
- (void)buttomAction:(UIButton *)sender
{
    //    返回之前界面
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}
- (void)buttomAction2:(UIButton *)sender
{
    ViewController *firstVC = [[ViewController alloc] init];
    [self presentViewController:firstVC animated:YES completion:^{
    }];
    [firstVC release];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
