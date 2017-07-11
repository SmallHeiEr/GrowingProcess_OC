//
//  ViewController.m
//  模糊效果
//
//  Created by dllo on 16/3/25.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain)UIImageView *imageV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image11.jpg"]];
    UIBlurEffect *effec = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effec];
//    self.imageV.userInteractionEnabled = NO;
    effectView.frame = self.imageV.frame;
    [self.imageV addSubview:effectView];
    [self.view addSubview:self.imageV];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
