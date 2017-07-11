//
//  RootViewController.m
//  UI8_界面通信
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"
@interface RootViewController ()<UIScrollViewDelegate>
@property (nonatomic, retain) RootView *rootV;
@end

@implementation RootViewController
- (void)dealloc
{
    [_rootV release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"第一页";
   self.rootV = [[RootView alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    [self.view addSubview:self.rootV];
    [self.rootV release];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 400, 50, 50);
    [button setTitle:@"点我" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
    
    
}
- (void)buttonAction:(UIButton *)sender
{
    NSLog(@"11111");
//    self.rootV.label.text =@"🐶";
//    self.rootV.content = @"🐶";
    [self.rootV setLabelVal:@"🐲"];
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
