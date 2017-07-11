+//
//  FirstViewController.m
//  UI3--视图控制器
//
//  Created by dllo on 16/1/14.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(200, 100, 50, 30);
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttomAction2:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(100, 100, 50, 30);
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button1 setTitle:@"上一页" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttomAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
}
- (void)buttomAction:(UIButton *)sender
{
//    返回之前界面
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}
- (void)buttomAction2:(UIButton *)sender
{
    SecondViewController *firstVC = [[SecondViewController alloc] init];
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
