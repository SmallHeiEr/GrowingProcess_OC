//
//  ViewController.m
//  作业
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "ReduceViewController.h"
#import "DetailedViewController.h"
@interface ViewController ()
@property (nonatomic, retain)ReduceViewController *reduceVC;
@property (nonatomic, retain)DetailedViewController *detailedVC;
@property (nonatomic, retain)UISegmentedControl *segC;
@end

@implementation ViewController
- (void)dealloc
{
    [_segC release];
    [_reduceVC release];
    [_detailedVC release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.detailedVC = [[DetailedViewController alloc]init];
    [self addChildViewController:self.detailedVC];
    [self.view addSubview:self.detailedVC.view];
    [self.detailedVC release];
   
    self.reduceVC = [[ReduceViewController alloc]init];
    [self addChildViewController:self.reduceVC];
    [self.view addSubview:self.reduceVC.view];
    [self.reduceVC release];
    
    
    
    self.segC = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"缩略", @"列表", nil]];
    self.segC.frame = CGRectMake(60, 20, self.view.frame.size.width - 60 * 2, 30);
    [self.segC addTarget:self action:@selector(segCAction:) forControlEvents:UIControlEventValueChanged];
    self.segC.selectedSegmentIndex = 0;
    
    [self.view addSubview:self.segC];
    [self.segC release];
    
    
    
    
    
}
- (void)segCAction:(UISegmentedControl *)sender
{
    if (0 == self.segC.selectedSegmentIndex) {
        [self.view bringSubviewToFront:self.reduceVC.view];
    }
    if (1 == self.segC.selectedSegmentIndex) {
        [self.view bringSubviewToFront:self.detailedVC.view];
    }
    [self.view bringSubviewToFront:self.segC];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
