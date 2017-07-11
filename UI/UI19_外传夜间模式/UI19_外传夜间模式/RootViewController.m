//
//  RootViewController.m
//  UI19_外传夜间模式
//
//  Created by dllo on 16/3/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "NightLabel.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"第一页";
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction)]autorelease];
    
    NightLabel *label = [[NightLabel alloc] initWithFrame:CGRectMake(100, 200, 80, 30)];
    label.text = @"啦啦啦";
    [self.view addSubview:label];
    [label release];
    
}
- (void)rightAction
{
    SecondViewController *secongVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secongVC animated:YES];
    [secongVC release];
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
