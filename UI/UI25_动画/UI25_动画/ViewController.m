//
//  ViewController.m
//  UI25_动画
//
//  Created by dllo on 16/3/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain)UIImageView *imageV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button .frame = CGRectMake(50, 50, 100, 100);
    button.backgroundColor = [UIColor cyanColor];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(200, 300, 100, 100)];
    self.imageV.image = [UIImage imageNamed:@"image20.jpg"];
    [self.view addSubview:self.imageV];
    [self.imageV release];
    self.imageV.layer.cornerRadius = 50;
//    [self.imageV.layer setMasksToBounds:YES];
     //layer
    button.layer.shadowColor = [[UIColor blackColor] CGColor];
//    阴影偏移
    button.layer.shadowOffset = CGSizeMake(5, 5);
//    阴影透明度
    button.layer.shadowOpacity = 0.5;
//    阴影模糊程度
    button.layer.shadowRadius = 0.5;
//    若要圆形，，，需长 ＝ 宽，， 圆角设置成一半边长
//    圆角
    button.layer.cornerRadius = 50;
//    描边颜色
    button.layer.borderColor = [[UIColor blueColor] CGColor];
//    描边宽度
    button.layer.borderWidth = 1.5;
}
- (void)buttonAction:(UIButton *)sender
{
    //UIView动画， 参数1 － 持续时间
//    [UIView animateWithDuration:2.f animations:^{
////        延时执行
//        [UIView setAnimationDelay:1.f];
////        速度曲线
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
////        动画反转
//        [UIView setAnimationRepeatAutoreverses:YES];
////        重复次数
//        [UIView setAnimationRepeatCount:5];
//        self.imageV.frame = CGRectMake(300, 500, 100, 100);
//    }];
//
 
//    [UIView animateWithDuration:2.0 animations:^{
//        
//        self.imageV.frame = CGRectMake(300, 500, 100, 100);
//        
//    }completion:^(BOOL finished) {
//        
////        动画完成后执行
//        self.imageV.frame = CGRectMake(0, 0, 50, 50);
//        
//    }];
//    
    
//    [UIView animateWithDuration:2.0 delay:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        
//                self.imageV.frame = CGRectMake(300, 500, 100, 100);
//
//        
//    } completion:^(BOOL finished) {
//                self.imageV.frame = CGRectMake(0, 0, 50, 50);
//
//        
//    }];
    
//    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(50, 300, 50, 50)];
//    view.backgroundColor = [UIColor greenColor];
//    
//    [UIView transitionFromView:self.imageV toView:view duration:2.0 options:UIViewAnimationOptionCurveEaseInOut completion:^(BOOL finished) {
//    }];
    
    //放大
//    CABasicAnimation *basicA = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
////    起始值，fromValue为id类型，所以需要将数字专为对象类型（字面量）
//    basicA.fromValue = @(1);
////    目的值
//    basicA.toValue = @(10);
////    持续时间
//    basicA.duration = 3.f;
////    反转
//    basicA.autoreverses = YES;
////    重复次数
//    basicA.repeatCount = NSIntegerMax;
////    //先制定动画，再给某个控件的layer添加动画
//    [self.imageV.layer addAnimation:basicA forKey:@"aaa"];
    
//    transform.rotation - 旋转
    CABasicAnimation *basicA1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    basicA1.fromValue = @(0);
    
//    M_PI ----圆周率
    
    basicA1.toValue = @(M_PI_2);
    basicA1.duration = 2.f;
//    basicA1.autoreverses = YES;
    basicA1.repeatCount = 1;
    [self.imageV.layer addAnimation:basicA1 forKey:@"bbb"];
//    将动画添加进数组，一起执行
//    CAAnimationGroup *group = [CAAnimationGroup animation];
//    group.animations = @[basicA1, basicA];
////    部分参数会覆盖原有参数
//    group.duration = 0.9f;
//    group.repeatCount = NSIntegerMax;
//    group.autoreverses = YES;
//    [self.imageV.layer addAnimation:group forKey:@"ccc"];
//删除
//    - (void)removeAnimationForKey:(NSString *)key
    
//    帧动画
//    CAKeyframeAnimation *keyFrame = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    //创建可变路径
//    CGMutablePathRef path = CGPathCreateMutable();
////    设置轨迹
//    CGPathMoveToPoint(path, NULL, 50, 50);
//    CGPathAddLineToPoint(path, NULL, 100, 100);
//    CGPathAddLineToPoint(path, NULL, 250, 100);
//    CGPathAddLineToPoint(path, NULL, 250, 250);
//    CGPathAddLineToPoint(path, NULL, 100, 100);
//    曲线
    //需要设置3个点坐标
//    （cp1x， cp2x）（cp2x，cp2y）－－会尽量靠近这两个点但不会穿过
//    （x， y）－－目的点
//    CGPathAddCurveToPoint(CGMutablePathRef  _Nullable path, const CGAffineTransform * _Nullable m, CGFloat cp1x, CGFloat cp1y, CGFloat cp2x, CGFloat cp2y, CGFloat x, CGFloat y)
//    CGPathAddCurveToPoint(path, NULL, 50, 50, 300, 300, 300, 500);
//    
//    
//    keyFrame.path = path;
//    keyFrame.duration = 10;
//    [self.imageV.layer addAnimation:keyFrame forKey:@"ddd"];
//    
//    CATransition *tran = [CATransition animation];
//    tran.type = @"oglFlip";
//    tran.subtype = kCATransitionFromLeft;
//    tran.duration = 2.f;
//    tran.repeatCount = NSIntegerMax;
//    [sender.layer addAnimation:tran forKey:@"eee"];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
