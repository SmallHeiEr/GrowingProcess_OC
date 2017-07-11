//
//  NightViewController.m
//  UI19_外传夜间模式
//
//  Created by dllo on 16/3/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "NightViewController.h"

@interface NightViewController ()

@end

@implementation NightViewController
- (void)dealloc
{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"night" object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"day" object:nil];

    
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
   
    BOOL isNight = [userD boolForKey:@"isNight"];
//    if (nil == [userD boolForKey:@"isNight"]) {
//        [userD setBool:NO forKey:@"isNight"];
//    }
    if (YES == isNight) {
        self.view.backgroundColor = [UIColor grayColor];
        self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
        self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    }
  
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nightAction) name:@"night" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dayAction) name:@"day" object:nil];
    
    
}
- (void)nightAction
{
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
}
- (void)dayAction
{
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
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
