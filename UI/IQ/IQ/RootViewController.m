//
//  RootViewController.m
//  IQ
//
//  Created by dllo on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV.image = [UIImage imageNamed:@"image1.png"];
    [self.view addSubview:imageV];
    [imageV release];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(236, 506, 178, 88);
//    button.backgroundColor = [UIColor cyanColor];
    [button setImage:[UIImage imageNamed:@"image1副本.png"] forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
- (void)buttonAction
{
    
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
