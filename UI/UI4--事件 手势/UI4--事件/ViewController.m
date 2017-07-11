//
//  ViewController.m
//  UI4--事件
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain) UILabel *label;
@end

@implementation ViewController
- (void)dealloc
{
    [_label release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
   // 轻拍长安评议清扫缩放旋转拖动
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(100, 300, 200, 200)];
    self.label.text = @"🐶";
    self.label.userInteractionEnabled = YES;
    
//    响应者链：
//    硬件检测到事件 -> 内核->系统->当前APP->传递到最前沿
//    再一级一级向回传递，直到遇到有响应能力的试图进行相应；
//    若所有视图不惧响应能力，则丢弃事件
//    有父子关系的师徒，关闭了响应能力（userIntdeactionEnabled）事件
//    被阻断，无父子关系的视图关闭了响应能力依然会向后传递
//    UIImageView和UILable的默认响应能力是关闭的
    self.label.font = [UIFont systemFontOfSize:200];
    [self.view addSubview:self.label];
    [self.label release];
    UIButton *but = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 200)];
//    but.backgroundColor = [UIColor redColor];
   but.userInteractionEnabled = NO;
    [self.view addSubview:but];
    [but release];
    //轻拍手势
//    创建轻拍手势并绑定处理方法
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
//    轻拍次数
    tapGR.numberOfTapsRequired = 2;
//    手指数
    tapGR.numberOfTouchesRequired = 2;
//    将轻拍手势加到label上
    [self.label addGestureRecognizer:tapGR];
    [tapGR release];
//    创建长按手势
    UILongPressGestureRecognizer *longGR = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longAction:)];
    [self.label addGestureRecognizer:longGR];
    [longGR release];
//    创建旋转手势
    UIRotationGestureRecognizer *rotaGR = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotaAction:)];
    [self.label addGestureRecognizer:rotaGR];
    [rotaGR release];
//    创建捏合手势
    UIPinchGestureRecognizer *pinchGR = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchAction:)];
    [self.label addGestureRecognizer:pinchGR];
    [pinchGR release];
////    创建平移
//    UIPanGestureRecognizer *panRG = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAction:)];
//    [self.view addGestureRecognizer:panRG];
//    [panRG release];
//    创建轻扫
    UISwipeGestureRecognizer *swipeRG = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeAction:)];
    [self.label addGestureRecognizer:swipeRG];
    [swipeRG release];
//    边缘清扫
    UIScreenEdgePanGestureRecognizer *scrEPRG = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(ScrEPRGAction:)];
    scrEPRG.edges = UIRectEdgeLeft;
    [self.view addGestureRecognizer:scrEPRG];
    [scrEPRG release];
}
//边缘清扫
- (void)ScrEPRGAction:(UITapGestureRecognizer *)sender
{
    NSLog(@"边缘清扫");
    self.label.text = @"gui";
    self.label.font = [UIFont systemFontOfSize:100];
}
- (void)swipeAction:(UISwipeGestureRecognizer *)sender
{
    NSLog(@"清扫");
    self.label.text = @"🐢";
    self.label.font = [UIFont systemFontOfSize:200];
}
- (void)panAction:(UIPanGestureRecognizer *)sender
{
    NSLog(@"平移");
    self.label.text = @"狗";
    CGPoint point = [sender locationInView:self.view];
    self.view.backgroundColor = [UIColor colorWithRed:point.x / 255.0 green:point.y / 255.0 blue:(point.x + point.y) / 255.0 alpha:1.0];
    self.label.font = [UIFont systemFontOfSize:100];
}
- (void)pinchAction:(UIPinchGestureRecognizer *)sender
{
    NSLog(@"捏合");
    self.label.transform = CGAffineTransformScale(self.label.transform, sender.scale, sender.scale);
    sender.scale = 1;
    self.label.text = @"🐱";
    self.label.font = [UIFont systemFontOfSize:200];
}
- (void)rotaAction:(UIRotationGestureRecognizer *)sender
{
    NSLog(@"旋转");
    self.label.transform = CGAffineTransformRotate(self.label.transform, sender.rotation);
//    限制速度
    sender.rotation = 1;
    self.label.text = @"🐻";
    self.label.font = [UIFont systemFontOfSize:200];
}
- (void)longAction:(UILongPressGestureRecognizer *)sender
{
    //NSLog(@"长按");
    if (UIGestureRecognizerStateBegan ==sender.state) {
        NSLog(@"按下");
    }
    if (UIGestureRecognizerStateEnded ==sender.state) {
        NSLog(@"抬起");
    }
    if (UIGestureRecognizerStateChanged ==sender.state) {
        NSLog(@"拖动");
//        在参照试图内的位置坐标
       self.label.center = [sender locationInView:self.view];
    }
    self.label.text =@"🐯";
    self.label.font = [UIFont systemFontOfSize:200];

}
- (void)tapAction:(UITapGestureRecognizer *)sender
{
    NSLog(@"轻拍");
    self.label.text = @"班长";
    self.label.font = [UIFont systemFontOfSize:100];
}
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [super touchesBegan:touches withEvent:event];
//    NSLog(@"触摸开始");
//}
//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [super touchesEnded:touches withEvent:event];
//    NSLog(@"触摸结束");
//}
//- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [super touchesCancelled:touches withEvent:event];
//    NSLog(@"触摸取消");
//}
//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [super touchesMoved:touches withEvent:event];
//    NSLog(@"触摸移动");
//}
//- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
//{
//    [super motionBegan:motion withEvent:event];
//    NSLog(@"摇一摇开始") ;
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
