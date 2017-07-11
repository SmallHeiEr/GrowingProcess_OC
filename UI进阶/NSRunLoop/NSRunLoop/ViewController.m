//
//  ViewController.m
//  NSRunLoop
//
//  Created by dllo on 16/5/3.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//1.NsRunLoop(消息循环机制)
// >作用：主要负责触发当前App的事件的处理（例如滑动，点击等）
// >为防止CPU空转，节省CPU资源

// 在程序启动的时候，主线程会对应的有一个RunLoop （一个线程对应一个）

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = [UIColor whiteColor];
//    1>. 想拖拽和Timer都执行
#if 0
    
    UIScrollView *scrollV = [[UIScrollView alloc] initWithFrame:self.view.frame];
    scrollV.contentSize = CGSizeMake(414, 2500);
    [self.view addSubview:scrollV];
    scrollV.backgroundColor = [UIColor cyanColor];
    
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(my) userInfo:nil repeats:YES];
    
//    Runloop 的模式
//    默认创建的RunLoop 的模式是NSDefaultRunLoopMode
//    当有拖拽事件发生的时候，当前线程的RunLoop的模式被切换成NSEventTrackingRunLoopMode
    
//    想拖拽和Timer都执行，需要把RunLoop的模式改成NSRunLoopCommonModes（自定义－>兼容两种模式）
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
#endif
//   2>. 让子线程一直处于活跃
#if 0
    
    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(haha) object:nil];
 
    [thread start];
#endif
    
//    3>. 优化tableView拖拽和图片加载
#if 1
//   当拖拽的时候不加载，，加载图片的时候不拖拽（）

    //    创建个tableView
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(cellforrow) userInfo:nil repeats:YES];
    
#endif
    
    
}
- (void)cellforrow
{

    //    这个方法是加载图片
    [self performSelector:@selector(loadImage) withObject:@"图片路径" afterDelay:0 inModes:@[NSDefaultRunLoopMode]];
}
- (void)loadImage
{
    NSLog(@"图片缓存");
}
- (void)haha
{
    NSLog(@"%@", [NSThread currentThread]);
    
//    当前线程出发一次后就被kill了，所以RunLoop接不到响应时间
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(my) userInfo:nil repeats:YES];
    
//    让子线程一直处于活跃
    [[NSRunLoop currentRunLoop] run];
    
    
}

- (void)my
{
    NSLog(@",alkdhfkaljfalmdf");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
