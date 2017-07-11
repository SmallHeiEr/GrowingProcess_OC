//
//  ViewController.m
//  UI——5Control及其子类
//
//  Created by dllo on 16/1/18.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UISegmentedControl *seg = [[UISegmentedControl alloc]initWithItems:@[@"龙龙", @"班长", @"龙龟"]];
    seg.frame = CGRectMake(100, 200, 300, 30);
//    边框颜色
    seg.tintColor = [UIColor redColor];
//    插入item
//    参数1，标题内容   2，位置，  是否有动画
    [seg insertSegmentWithTitle:@"安大妈" atIndex:1 animated:YES];
//    修改标题
    [seg setTitle:@"🐲" forSegmentAtIndex:0];
//    [seg setImage:[UIImage imageNamed:@"屏幕快照 2016-01-18 上午9.39.15.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal forSegmentAtIndex:3];
//    注意不要忘记初始选中状态
    seg.selectedSegmentIndex = 0;
//    处理图片渲染的分步实现
    UIImage *image = [UIImage imageNamed:@"屏幕快照 2016-01-18 上午9.39.15.png"];
//    渲染的关键方法
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [seg setImage:image forSegmentAtIndex:2];
//    注意触发方式
    [seg addTarget:self action:@selector(segAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:seg];
    [seg release];
//    *************************************************
//    开关
    //frame只有坐标生效，大小不生效由系统设定
    UISwitch *swi = [[UISwitch alloc]initWithFrame:CGRectMake(100, 400, 0, 0)];
    //swi.backgroundColor = [UIColor redColor];
    [swi addTarget:self action:@selector(swiAction:) forControlEvents:UIControlEventValueChanged];
//    初始状态
    swi.on = YES;
//    边框颜色
    swi.tintColor = [UIColor yellowColor];
//    按钮颜色
    swi.thumbTintColor  = [UIColor redColor];
//  //  开启状态背景色
    //swi.onTintColor = [UIColor blueColor];
    //swi.backgroundColor = [UIColor blackColor];
    [self.view addSubview:swi];
    [swi release];
//    ************************************************
//    滑动条
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(100, 300, 200, 30)];
//    重要属性
//    最小值
    slider.minimumValue = 0;
//    最大值
    slider.maximumValue = 10;
//    设置进度位置
    slider.value = 5;
//    风格属性
//    最值轨道色
    slider.minimumTrackTintColor = [UIColor redColor];
    slider.maximumTrackTintColor = [UIColor greenColor];
//    按钮色
    slider.thumbTintColor = [UIColor cyanColor];
//    图片
//    最值轨道图片
//    slider.minimumValueImage = [UIImage imageNamed:@""];
//    slider.maximumValueImage
//    按钮图片
    //[slider setThumbImage:[UIImage imageNamed:@"屏幕快照 2016-01-18 上午9.39.15.png"] forState:UIControlStateNormal];
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    [slider release];
//    **********************************************
    UIPageControl *pageC = [[UIPageControl alloc]initWithFrame:CGRectMake(100, 500, 200, 30)];
    pageC.numberOfPages = 10;
    [pageC addTarget:self action:@selector(pageCAction:) forControlEvents:UIControlEventValueChanged];
    pageC.backgroundColor = [UIColor cyanColor];
//    未选中颜色
    pageC.pageIndicatorTintColor = [UIColor redColor];
//    当前选中颜色
    pageC.currentPageIndicatorTintColor = [UIColor greenColor];
    [self.view addSubview:pageC];
    [pageC release];
    
    
}
- (void)pageCAction:(UIPageControl *)sender
{
    NSLog(@"选中点位置：%ld", sender.currentPage);
    
}
- (void)sliderAction:(UISlider *)sender
{
    NSLog(@"%.1f", sender.value);
}
- (void)swiAction:(UISwitch *)sender
{
    if (YES == sender.on) {
        NSLog(@"开启");
    } if (NO == sender.on) {
        NSLog(@"关闭");
    }
}
- (void)segAction:(UISegmentedControl *)sender
{
    switch (sender.selectedSegmentIndex) {
        case 0:
            
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
