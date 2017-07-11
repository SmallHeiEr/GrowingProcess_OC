//
//  EnterViewController.m
//  周末作业
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "EnterViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface EnterViewController ()
@property (nonatomic, retain) SecondViewController *secondVC;
@property (nonatomic, retain) FirstViewController *firstVC;
@property (nonatomic, retain) ThirdViewController *thirdVC;
@property (nonatomic, retain) UISegmentedControl *seg;
@property (nonatomic, retain) UIButton *button;
@end

@implementation EnterViewController
- (void)dealloc
{
    [_button retain];
    [_firstVC release];
    [_secondVC release];
    [_thirdVC release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    三VC
    self.view.backgroundColor = [UIColor whiteColor];

    self.thirdVC = [[ThirdViewController alloc]init];
    [self addChildViewController:self.thirdVC];
    [self.view addSubview:self.thirdVC.view];
    [self.thirdVC release];
//    二VC
    self.secondVC = [[SecondViewController alloc]init];
    [self addChildViewController:self.secondVC];
    [self.view addSubview:self.secondVC.view];
    [self.secondVC release];
    //    主页VC
    self.firstVC = [[FirstViewController alloc]init];
    [self addChildViewController:self.firstVC];
    [self.view addSubview:self.firstVC.view];
    [self.firstVC release];
  
//    分段控件
    self.seg = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"聊天", @"僵尸", @"汤姆", nil]];
    self.seg.frame = CGRectMake(160, 10, 94, 30);
    self.seg.selectedSegmentIndex = 0;
    [self.seg addTarget:self action:@selector(segAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.seg];
    [self.seg release];
    
    
    
    //   6. 右上角按钮
   self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(350, 0, 40, 40);
    [self.button setBackgroundImage:[UIImage imageNamed:@"login_title_btn_normal.png"] forState:UIControlStateNormal];
    [self.button setBackgroundImage:[UIImage imageNamed:@"login_title_btn_press.png"] forState:UIControlStateHighlighted];
    [self.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];

    
    
    
    
    
}
- (void)buttonAction:(UIButton *)sender
{
    UIAlertController *alertA = [UIAlertController alertControllerWithTitle:@"注意" message:@"是否返回到登录界面" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertB = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:^{
        }];
    }];
    [alertA addAction:alertB];
    UIAlertAction *alertC = [UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    
    [alertA addAction:alertC];
    [self presentViewController:alertA animated:YES completion:nil];
    

}
- (void)segAction:(UISegmentedControl *)sender
{
    NSLog(@"选择的item的下标:%ld", sender.selectedSegmentIndex);
    if (0 ==sender.selectedSegmentIndex) {
        [self.view bringSubviewToFront:self.firstVC.view];
    }
    if (1 ==sender.selectedSegmentIndex) {
        [self.view bringSubviewToFront:self.secondVC.view];
    }
    if (2 ==sender.selectedSegmentIndex) {
        [self.view bringSubviewToFront:self.thirdVC.view];
    }
    //    每次都将UISegmentedControl移动到最前端
    [self.view bringSubviewToFront:self.seg];
    [self.view bringSubviewToFront:self.button];

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
