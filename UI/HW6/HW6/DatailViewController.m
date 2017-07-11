//
//  DatailViewController.m
//  HW6
//
//  Created by dllo on 16/1/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DatailViewController.h"
#import "DetailView.h"
@interface DatailViewController ()

@end

@implementation DatailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    DetailView *detailV = [[DetailView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:detailV];
    [detailV release];
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
