//
//  SecondViewController.m
//  UI7 - 导航视图控制器
//
//  Created by dllo on 16/1/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title = @"第二页";
    
    [[self.navigationItem.rightBarButtonItem = [UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(rightAction:)]autorelease];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
}
- (void)rightAction:(UIBarButtonItem *)sender
{
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    [self.navigationController pushViewController:thirdVC animated:YES];
    [thirdVC release];
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
