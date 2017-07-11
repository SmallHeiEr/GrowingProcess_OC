//
//  ViewController.m
//  近距离感应
//
//  Created by dllo on 16/5/3.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, assign) NSInteger count;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    _label = [[UILabel alloc] init];
    _label.frame = CGRectMake(100, 200, 160, 160);
    _label.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:_label];
    
//    proximityMonitoringEnabled
//    proximityState
    
    [[UIDevice currentDevice] setProximityMonitoringEnabled:YES];
    
    if ([UIDevice currentDevice].proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(proximitySonsorChange) name:UIDeviceProximityStateDidChangeNotification object:nil];
    }
    
    
}
- (void)proximitySonsorChange
{
//    当接近时
    if ([UIDevice currentDevice].proximityState == YES) {
        NSLog(@"接近面部");
    } else {
        NSLog(@"");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
