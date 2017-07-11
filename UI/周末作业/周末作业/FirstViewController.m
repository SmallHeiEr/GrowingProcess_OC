//
//  FirstViewController.m
//  周末作业
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV1.image = [UIImage imageNamed:@"16317.jpg"];
    [self.view addSubview:imageV1];
    [imageV1 release];
    
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
