//
//  LoginViewController.m
//  作业
//
//  Created by dllo on 16/1/14.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginView.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    LoginView *view1 = [[LoginView alloc]initWithFrame:CGRectMake(50, 60, self.view.frame.size.width - 50 * 2, 30)];
    view1.backgroundColor = [UIColor redColor];
    view1.label.text = @"账号";
    view1.field.placeholder = @"请输入账号";
    [self.view addSubview:view1];
    [view1 release];

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
