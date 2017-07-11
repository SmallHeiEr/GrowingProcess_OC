//
//  ViewController.m
//  作业
//
//  Created by dllo on 16/1/18.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain)UISlider *slider1;
@property (nonatomic, retain)UISlider *slider2;
@property (nonatomic, retain)UISlider *slider3;
@property (nonatomic, retain)UISlider *slider4;
@end

@implementation ViewController
- (void)dealloc
{
    [_slider1 release];
    [_slider2 release];
    [_slider3 release];
    [_slider4 release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.slider1 = [[UISlider alloc]initWithFrame:CGRectMake(100, 200, 300, 30)];
    [self.slider1 addTarget:self action:@selector(slider1Action:) forControlEvents:UIControlEventValueChanged];
    self.slider1.minimumTrackTintColor = [UIColor redColor];
    self.slider1.thumbTintColor = [UIColor cyanColor];
    self.slider1.minimumValue = 0;
    self.slider1.maximumValue = 256;
    [self.view addSubview:self.slider1];
    [self.slider1 release];
     self.slider2 = [[UISlider alloc]initWithFrame:CGRectMake(100, 300, 300, 30)];
    self.slider2.thumbTintColor = [UIColor cyanColor];
   self. slider2.minimumValue = 0;
    self.slider2.maximumValue = 256;
    [self.slider2 addTarget:self action:@selector(slider2Action:) forControlEvents:UIControlEventValueChanged];
    self.slider2.minimumTrackTintColor = [UIColor blueColor];
    
    [self.view addSubview:self.slider2];
    [self.slider2 release];
     self.slider3 = [[UISlider alloc]initWithFrame:CGRectMake(100, 400, 300, 30)];
    self.slider3.minimumValue = 0;
    self.slider3.maximumValue = 256;
    [self.slider3 addTarget:self action:@selector(slider3Action:) forControlEvents:UIControlEventValueChanged];
    self.slider3.thumbTintColor = [UIColor cyanColor];
    self.slider3.minimumTrackTintColor = [UIColor yellowColor];
    [self.view addSubview:self.slider3];
    [self.slider3 release];
    self.slider4 = [[UISlider alloc]initWithFrame:CGRectMake(100, 500, 300, 30)];
    self.slider4.thumbTintColor = [UIColor cyanColor];
    self.slider4.minimumValue = 0.5;
    self.slider4.maximumValue = 1;
    [self.slider4 addTarget:self action:@selector(slider4Action:) forControlEvents:UIControlEventValueChanged];
    self.slider4.minimumTrackTintColor = [UIColor yellowColor];
    [self.view addSubview:self.slider4];
    [self.slider4 release];
   
    
    
    
}
- (void)slider1Action:(UISlider *)sender
{
    
    self.view.backgroundColor = [UIColor colorWithRed:sender.value / 255.0 green:self.slider2.value / 255.0 blue:self.slider3.value / 255.0 alpha:1];
}
- (void)slider3Action:(UISlider *)sender
{
    self.view.backgroundColor = [UIColor colorWithRed:self.slider1.value / 255.0 green:sender.value blue:self.slider3.value / 255.0 alpha:1];}
- (void)slider2Action:(UISlider *)sender
{
    self.view.backgroundColor = [UIColor colorWithRed:self.slider1.value / 255.0 green:self.slider2.value / 255.0 blue:sender.value alpha:1];
}
- (void)slider4Action:(UISlider *)sender
{
    self.view.alpha = sender.value;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
