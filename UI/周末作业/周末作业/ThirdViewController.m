//
//  ThirdViewController.m
//  周末作业
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (nonatomic, retain) UIImageView *backgroundImage;
@end

@implementation ThirdViewController
- (void)dealloc
{
    [_backgroundImage release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置背景
    self.backgroundImage = [[UIImageView alloc]initWithFrame:self.view.frame];
    _backgroundImage.image = [UIImage imageNamed:@"angry_00.jpg"];
    [self.view addSubview:_backgroundImage];
    [_backgroundImage release];
    //    设置按钮1
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(40, 320, 50, 50);
    [button1 setBackgroundImage:[UIImage imageNamed:@"cymbal.png"] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(button1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    //    设置按钮2
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(40, 420, 50, 50);
    [button2 setBackgroundImage:[UIImage imageNamed:@"drink.png"] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(button2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    //    设置按钮3
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(40, 520, 50, 50);
    [button3 setBackgroundImage:[UIImage imageNamed:@"eat.png"] forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(button3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    //    设置按钮4
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(334, 320, 40, 40);
    [button4 setBackgroundImage:[UIImage imageNamed:@"fart.png"] forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(button4) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    //    设置按钮5
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(334, 420, 40, 40);
    [button5 setBackgroundImage:[UIImage imageNamed:@"pie.png"] forState:UIControlStateNormal];
    [button5 addTarget:self action:@selector(button5) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    //    设置按钮6
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    button6.frame = CGRectMake(334, 520, 40, 40);
    [button6 setBackgroundImage:[UIImage imageNamed:@"scratch.png"] forState:UIControlStateNormal];
    [button6 addTarget:self action:@selector(button6) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button6];
    //    设置按钮7头
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeCustom];
    button7.frame = CGRectMake(145, 120, 120, 120);
    [button7 addTarget:self action:@selector(button7) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button7];
    //    设置按钮8腹部
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeCustom];
    button8.frame = CGRectMake(135, 400, 150, 250);
    [button8 addTarget:self action:@selector(button8) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button8];
    //    设置按钮9左脚
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeCustom];
    button9.frame = CGRectMake(100, 650, 120, 70);
    [button9 addTarget:self action:@selector(button9) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button9];
    //    设置按钮10右脚
    UIButton *button10 = [UIButton buttonWithType:UIButtonTypeCustom];
    button10.frame = CGRectMake(190, 650, 120, 70);
    [button10 addTarget:self action:@selector(button10) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button10];
    //    设置按钮11尾巴
    UIButton *button11 = [UIButton buttonWithType:UIButtonTypeCustom];
    button11.frame = CGRectMake(270, 550, 70, 140);
    [button11 addTarget:self action:@selector(button11) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
}
- (void)button1
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 12; i++) {
        NSString *imageName = [NSString stringWithFormat:@"cymbal_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 1.5;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button2
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 80; i++) {
        NSString *imageName = [NSString stringWithFormat:@"drink_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 5;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button3
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 39; i++) {
        NSString *imageName = [NSString stringWithFormat:@"eat_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 3;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button4
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 27; i++) {
        NSString *imageName = [NSString stringWithFormat:@"fart_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 3;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button5
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 23; i++) {
        NSString *imageName = [NSString stringWithFormat:@"pie_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 2;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button6
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 55; i++) {
        NSString *imageName = [NSString stringWithFormat:@"scratch_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 5;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button7
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 80; i++) {
        NSString *imageName = [NSString stringWithFormat:@"knockout_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 5;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button8
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 33; i++) {
        NSString *imageName = [NSString stringWithFormat:@"stomach_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 2;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button9
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 29; i++) {
        NSString *imageName = [NSString stringWithFormat:@"footRight_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 2.5;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button10
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 29; i++) {
        NSString *imageName = [NSString stringWithFormat:@"footLeft_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 2.5;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];
}
- (void)button11
{
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < 25; i++) {
        NSString *imageName = [NSString stringWithFormat:@"angry_%02ld.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arr addObject:image];
    }
    _backgroundImage.animationImages = arr;
    _backgroundImage.animationDuration = 2.5;
    _backgroundImage.animationRepeatCount = 1;
    [_backgroundImage startAnimating];



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
