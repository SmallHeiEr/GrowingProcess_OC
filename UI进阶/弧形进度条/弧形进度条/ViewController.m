//
//  ViewController.m
//  弧形进度条
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()
@property (nonatomic, strong) MyView *vi;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
   
    _vi = [[MyView alloc] initWithFrame:self.view.frame];
    _vi.pi = -M_PI_2;
    _vi.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_vi];
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, 500, 314, 50)];
    slider.maximumValue = M_PI;
    slider.minimumValue = - M_PI + 0.0000001;
//    slider.continuous = YES ;
    [self.vi addSubview:slider];
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    slider.value = - M_PI;
    NSLog(@"%.f", slider.value);
    
}

- (void)sliderAction:(UISlider *)sender
{
//    [_vi removeFromSuperview];
//    _vi = [[MyView alloc] initWithFrame:self.view.frame];
//    _vi.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:_vi];
//    [self.view addSubview:sender];
    //    _vi.pi = M_PI_2;
//    if (sender.value == - M_PI) {
//        sender.value = 0.0000001;
//    }
   _vi.pi = sender.value + M_PI_2;
//    [_vi drawRect:_vi.frame];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
