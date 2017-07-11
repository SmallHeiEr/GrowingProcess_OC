//
//  BackImageViewController.m
//  播放器
//
//  Created by dllo on 16/3/17.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "BackImageViewController.h"

@interface BackImageViewController ()

@end

@implementation BackImageViewController
//- (void)dealloc
//{
//    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"night" object:nil];
//    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"day" object:nil];
//    [super dealloc];
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    // Do any additional setup after loading the view.
//    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
//    BOOL isNight = [userD boolForKey:@"isNight"];
//    if (YES == isNight) {
//        self.view.backgroundColor = [UIColor grayColor];
//        self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
//        
//    } else {
//        self.view.backgroundColor = [UIColor whiteColor];
//        self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
//        
//    }
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nightAction) name:@"night" object:nil];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dayAction) name:@"day" object:nil];
//    
}

//- (void)nightAction
//{
//    
//    self.view.backgroundColor = [UIColor grayColor];
//    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
//}
//
//- (void)dayAction
//{
//    
//    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
//}
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
