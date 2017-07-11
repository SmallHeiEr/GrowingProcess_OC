//
//  SecondViewController.m
//  UI19_外传夜间模式
//
//  Created by dllo on 16/3/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SecondViewController.h"
#import "NightLabel.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"第二页";
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    BOOL isNight = [userD boolForKey:@"isNight"];
    UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 50, 30)];
    // 需要多考虑的是:当第一次isNight == nil 会怎样
    sw.on = isNight;
    
    [sw addTarget:self action:@selector(swAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sw];
    [sw release];
    
    NightLabel *label = [[NightLabel alloc] initWithFrame:CGRectMake(100, 200, 80, 30)];
    label.text = @"啦啦啦";
    [self.view addSubview:label];
    [label release];
}

- (void)swAction:(UISwitch *)sender
{
    if (YES == sender.on) {
        NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
        [userD setBool:YES forKey:@"isNight"];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"night" object:nil];
    } else
    {
        NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
        [userD setBool:NO forKey:@"isNight"];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"day" object:nil];
    }
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
