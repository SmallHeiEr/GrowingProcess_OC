//
//  ViewController.m
//  1111111
//
//  Created by dllo on 16/3/30.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "avplay.h"
@interface ViewController ()

@end

@implementation ViewController
- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeRight;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
    self.view.backgroundColor = [UIColor whiteColor];

    avplay *view = [[avplay alloc] initWithFrame:CGRectMake(5, 64,self.view.frame.size.width, 300)];
    [self.view addSubview:view];
    [view release];
}
//- (BOOL)shouldAutorotate
//{
//    return YES;
//}
//- (NSUInteger)supportedInterfaceOrientations
//{
//    return 0;
//}
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
//{
//    return UIInterfaceOrientationLandscapeLeft;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
