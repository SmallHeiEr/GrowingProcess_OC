//
//  RootViewController.m
//  NC由透明渐变显现出来
//
//  Created by dllo on 16/4/16.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UIScrollViewDelegate>
@property (nonatomic, retain) UIView *alphaView;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        <#code to be executed after a specified delay#>
//    });
    
    
    
    UIImage *image = [[UIImage alloc] init];
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    //去掉底部线条
    [self.navigationController.navigationBar setShadowImage:image];
    [image release];
    
    self.alphaView = [[UIView alloc]initWithFrame:CGRectMake(0, - 20, [UIScreen mainScreen].bounds.size.width, 64)];
    [self.navigationController.navigationBar insertSubview:self.alphaView atIndex:0];
    self.alphaView.alpha = 0;
    self.alphaView.backgroundColor = [UIColor whiteColor];
    [_alphaView release];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    scrollView.contentOffset = CGPointMake(0, 0);
    scrollView.contentSize = CGSizeMake(414, 736 * 3);
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
    scrollView.backgroundColor = [UIColor cyanColor];
    
    
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    self.alphaView.alpha = scrollView.contentOffset.y / 250;
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
