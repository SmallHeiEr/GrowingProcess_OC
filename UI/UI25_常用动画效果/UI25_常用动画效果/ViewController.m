//
//  ViewController.m
//  UI25_常用动画效果
//
//  Created by dllo on 16/3/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain) UIView *view1;
@property (nonatomic, retain) UIImageView *imageV;
@property (nonatomic, assign) BOOL isTop;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    [self.view addSubview:self.view1];
    self.view1.backgroundColor = [UIColor cyanColor];
    [self.view1 release];
    
    UILongPressGestureRecognizer *longGR = [[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longAction)]autorelease];
    [self.view1 addGestureRecognizer:longGR];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button .frame = CGRectMake(100, 150, 80, 50);
//    button.backgroundColor = [UIColor cyanColor];
    [button setBackgroundImage:[UIImage imageNamed:@"IconGood.png"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"IconHgood.png"] forState:UIControlStateSelected];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

//    button.adjustsImageWhenHighlighted = NO;
    
    self.imageV = [[UIImageView alloc] initWithFrame:CGRectMake(50, 300, 300, 300)];
    self.imageV.image = [UIImage imageNamed:@"liuJD.jpg"];
    [self.view addSubview:self.imageV];
    self.imageV.layer.masksToBounds = YES;
    self.imageV.layer.cornerRadius = 150;
    UITapGestureRecognizer *tap = [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)]autorelease];
    [self.imageV addGestureRecognizer:tap];
    self.imageV.userInteractionEnabled = YES;
}
- (void)tapAction
{
    if (NO == self.isTop) {
//        每一个view的layer层，系统都设置了记录时间的属性
//        通过改变view动画时间来控制动画效果
        
//        获取但前旋转时间点
        CFTimeInterval stopTime = [self.imageV.layer convertTime:CACurrentMediaTime() fromLayer:nil];
        self.imageV.layer.speed = 0;
        self.imageV.layer.timeOffset = stopTime;
        
    } else {
        
        CFTimeInterval stopTime = self.imageV.layer.timeOffset;
//        设置速度1.0
        self.imageV.layer.speed = 1.0;
//        设置偏移量0
        self.imageV.layer.timeOffset = 0;
        self.imageV.layer.beginTime = 0;
//        设置开始时间
//        开始时间 ＝ 当前时间 － 时间偏移量
        self.imageV.layer.beginTime = [self.imageV.layer convertTime:CACurrentMediaTime() fromLayer:nil]- stopTime;
        NSLog(@"====%f", [self.imageV.layer convertTime:CACurrentMediaTime() fromLayer:nil] - stopTime);
    }
    self.isTop = !self.isTop;
}
- (void)buttonAction:(UIButton *)sender
{
//    CAKeyframeAnimation *keyFrame = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
//    keyFrame.values = @[@(0.1), @(1.0), @(1.5)];
//    keyFrame.duration = 0.2;
//    [sender.layer addAnimation:keyFrame forKey:@"key"];
//    sender.selected = !sender.selected;
    CAKeyframeAnimation *keyFrame = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.z"];
    float top = M_PI / 2;
    keyFrame.values = @[@(0), @(top), @(top * 2), @(top * 3), @(top * 4)];
    keyFrame.repeatCount = NSIntegerMax;
    keyFrame.duration = 3;
    [self.imageV.layer addAnimation:keyFrame forKey:@"key"];
    keyFrame.cumulative = YES;
    

    
}
- (void)longAction
{
    //旋转动画
//    CAKeyframeAnimation *keyFrame = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
//    float top = M_PI / 18;
//    float bom = - M_PI / 18;
//    //关键属性，值得数组，按数组顺序取执行动画
//    keyFrame.values = @[@(top), @(0), @(bom), @(0)];
//    keyFrame.repeatCount = NSIntegerMax;
//    keyFrame.duration = 0.3;
//    [self.view1.layer addAnimation:keyFrame forKey:@"key"];
//
////    线程
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//        [self.view1.layer removeAnimationForKey:@"key"];
//    });
    
    
    CABasicAnimation *basicA1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    basicA1.fromValue = @(0);
    basicA1.toValue = @(M_PI_2);
    basicA1.duration = 2;
    basicA1.autoreverses = NO;
    basicA1.repeatCount = 1;
    [self.imageV.layer addAnimation:basicA1 forKey:@"bbb"];
    basicA1.cumulative = YES;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
