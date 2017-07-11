//
//  MainViewController.m
//  abcde
//
//  Created by 李东旭 on 16/3/16.
//  Copyright © 2016年 周云霓. All rights reserved.
//

#import "MainViewController.h"
#import "TheViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeCustom];
    bu.backgroundColor = [UIColor greenColor];
    bu.frame = CGRectMake(0, 0, 100, 100);
    [bu addTarget:self action:@selector(buAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bu];
    // Do any additional setup after loading the view.
}

- (void)buAction
{
    TheViewController *the = [[TheViewController alloc] init];
    [self.navigationController pushViewController:the animated:YES];
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
