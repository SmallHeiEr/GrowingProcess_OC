//
//  RootViewController.m
//  UI7 - 导航视图控制器
//
//  Created by dllo on 16/1/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.view.alpha = 0.6;
//    标题
     //self.navigationItem.title = @"雪糕";
    
    UISegmentedControl *seg = [[UISegmentedControl alloc]initWithItems:@[@"要雪糕", @"要命"]];
    
//    头视图
    self.navigationItem.titleView = seg;
    [seg release];
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarAction:)]autorelease];
    
    
}
- (void)rightBarAction:(UIBarButtonItem *)sender
{
    SecondViewController *second = [[SecondViewController alloc]init];
//    second.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
//    [self presentViewController:second animated:YES completion:nil];
//    有逻辑的页面切换
    [self.navigationController pushViewController:second animated:YES];
    [second release];
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
