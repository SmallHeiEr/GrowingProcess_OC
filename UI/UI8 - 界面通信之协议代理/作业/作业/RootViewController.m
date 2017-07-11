//
//  RootViewController.m
//  作业
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"
@interface RootViewController ()
@property (nonatomic, retain)UILabel *lable1;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.lable1 = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 50, 50)];
    self.lable1.text = @"🐶";
    [self.view addSubview:self.lable1];
    [self.lable1 release];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 200, 50, 50);
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
    
    
}
- (void)buttonAction:(UIButton *)sender
{
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    [firstVC changeTextField:self.lable1.text];
    
    
    [self.navigationController pushViewController:firstVC animated:YES];
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
