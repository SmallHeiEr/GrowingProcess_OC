//
//  OtherViewController.m
//  abcde
//
//  Created by 李东旭 on 16/3/16.
//  Copyright © 2016年 周云霓. All rights reserved.
//

#import "OtherViewController.h"
#import "TwoViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeCustom];
    bu.backgroundColor = [UIColor greenColor];
    bu.frame = CGRectMake(0, 0, 100, 100);
    [bu addTarget:self action:@selector(buAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bu];
    // Do any additional setup after loading the view.
}

- (void)buAction
{
    TwoViewController *the = [[TwoViewController alloc] init];
#warning 5. 注意这里, TwoViewController页面可以横屏的, 但是这里 只能模态 不能push
    [self presentViewController:the animated:nil completion:nil];
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
