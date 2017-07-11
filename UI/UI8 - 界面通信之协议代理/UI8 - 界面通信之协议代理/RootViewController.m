//
//  RootViewController.m
//  UI8 - 界面通信之协议代理
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "RootView.h"
@interface RootViewController ()<RootViewDelegate>
@property (nonatomic, retain) UISegmentedControl *segC;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    RootView *rootV = [[RootView alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    rootV.delegate = self;
    [self.view addSubview:rootV];
    [rootV release];
    self.segC = [[UISegmentedControl alloc]initWithItems:@[@"要钱", @"要命"]];
    self.navigationItem.titleView = self.segC;
    [self.segC addTarget:self action:@selector(segAction:) forControlEvents:UIControlEventValueChanged];
    [self.segC release];
    
    
}
- (void)segAction:(UISegmentedControl *)sender
{
    if (0 == self.segC.selectedSegmentIndex) {
        FirstViewController *firstVC = [[FirstViewController alloc]init];
        [self presentViewController:firstVC animated:YES completion:^{
            NSLog(@"切换完成会执行此处");
        }];
        [firstVC release];

        
    }
    if (1 == self.segC.selectedSegmentIndex) {
        SecondViewController *secondVC = [[SecondViewController alloc]init];
        [self presentViewController:secondVC animated:YES completion:^{
            NSLog(@"切换完成会执行此处");
        }];
        [secondVC release];
    }

}
- (void)changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
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
