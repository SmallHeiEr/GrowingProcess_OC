//
//  ThirdViewController.m
//  UI7 - 导航视图控制器
//
//  Created by dllo on 16/1/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ThirdViewController.h"
#import "RootViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"第三页";
    
    [self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"屏幕快照 2016-01-20 下午4.09.10.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(rightAction:)] autorelease];

}
- (void)rightAction:(UIBarButtonItem *)sender
{
//    RootViewController *rootVC = [[RootViewController alloc]init];
//    [self.navigationController pushViewController:rootVC animated:YES];
////    返回上一个用popviewcontrolleranimated
////       下一个用pushViewController
//    返回某一页用   popToViewController:
//[self.navigationController.viewControllers(代表VC数组) objectAtIndex:1] animated:YES];
//    [rootVC release];
    [self.navigationController popToRootViewControllerAnimated:YES];
//    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
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
