//
//  ViewController.m
//  作业
//
//  Created by dllo on 16/1/12.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
////     Do any additional setup after loading the view, typically from a nib.
//    UIView *aView = [[UIView alloc] initWithFrame:self.view.frame];
//    aView.backgroundColor = [UIColor whiteColor];
//    aView.tag = 10001;
//    [self.view addSubview:aView];
//    [aView release];
    
//    UIView *bView = [[UIView alloc] initWithFrame:CGRectMake(11, 20, 298, 528)];
//    bView.backgroundColor = [UIColor brownColor];
//    bView.tag = 10002;
//    [self.view addSubview:bView];
//    [bView release];
//
//    UIView *cView = [[UIView alloc] initWithFrame:CGRectMake(22, 40, 276, 488)];
//    cView.backgroundColor = [UIColor darkGrayColor];
//    cView.tag = 10003;
//    [self.view addSubview:cView];
//    [cView release];
//    
//    UIView *dView = [[UIView alloc] initWithFrame:CGRectMake(33, 60, 254, 448)];
//    dView.backgroundColor = [UIColor lightGrayColor];
//    dView.tag = 10004;
//    [self.view addSubview:dView];
//    [dView release];
//    
//    UIView *eView = [[UIView alloc] initWithFrame:CGRectMake(44, 80, 232, 408)];
//    eView.backgroundColor = [UIColor whiteColor];
//    eView.tag = 10005;
//    [self.view addSubview:eView];
//    [eView release];
//    UIView *fView = [[UIView alloc] initWithFrame:CGRectMake(55, 100, 210, 368)];
//    fView.backgroundColor = [UIColor grayColor];
//    fView.tag = 10006;
//    [self.view addSubview:fView];
//    [fView release];
//    
//    UIView *gView = [[UIView alloc] initWithFrame:CGRectMake(66, 120, 188, 328)];
//    gView.backgroundColor = [UIColor redColor];
//    gView.tag = 10007;
//    [self.view addSubview:gView];
//    [gView release];
//    
//    UIView *hView = [[UIView alloc] initWithFrame:CGRectMake(77, 140, 166, 288)];
//    hView.backgroundColor = [UIColor greenColor];
//    hView.tag = 10008;
//    [self.view addSubview:hView];
//    [hView release];
//    UIView *iView = [[UIView alloc] initWithFrame:CGRectMake(88, 160, 144, 248)];
//    iView.backgroundColor = [UIColor blueColor];
//    iView.tag = 10009;
//    [self.view addSubview:iView];
//    [iView release];
//    
//    UIView *jView = [[UIView alloc] initWithFrame:CGRectMake(99, 180, 122, 208)];
//    jView.backgroundColor = [UIColor cyanColor];
//    jView.tag = 10010;
//    [self.view addSubview:jView];
//    [jView release];
//    
//    UIView *kView = [[UIView alloc] initWithFrame:CGRectMake(110, 200, 100, 168)];
//    kView.backgroundColor = [UIColor yellowColor];
//    kView.tag = 10011;
//    [self.view addSubview:kView];
//    [kView release];
//    UIView *lView = [[UIView alloc] initWithFrame:CGRectMake(121, 220, 78, 128)];
//    lView.backgroundColor = [UIColor magentaColor];
//    lView.tag = 10012;
//    [self.view addSubview:lView];
//    [lView release];
//    
//    UIView *mView = [[UIView alloc] initWithFrame:CGRectMake(132, 240, 56, 88)];
//    mView.backgroundColor = [UIColor orangeColor];
//    mView.tag = 10013;
//    [self.view addSubview:mView];
//    [mView release];
//    
//    UIView *nView = [[UIView alloc] initWithFrame:CGRectMake(143, 260, 34, 48)];
//    nView.backgroundColor = [UIColor purpleColor];
//    nView.tag = 10014;
//    [self.view addSubview:nView];
//    [nView release];
//
//    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
//    作业二
//    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(40, 70, 60, 40)];
//        aView.backgroundColor = [UIColor colorWithRed:45 / 255.0 green:255  / 255.0 blue:255 / 255.0 alpha:1];
//        aView.tag = 10001;
//        [self.view addSubview:aView];
//        [aView release];
//    
//        UIView *bView = [[UIView alloc] initWithFrame:CGRectMake(40, 130, 60, 40)];
//        bView.backgroundColor = [UIColor colorWithRed:45 / 255.0 green:255  / 255.0 blue:255 / 255.0 alpha:1];
//         aView.tag = 10002;
//        [self.view addSubview:bView];
//        [bView release];
//    
//        UIView *cView = [[UIView alloc] initWithFrame:CGRectMake(120, 70, 120, 40)];
//        cView.backgroundColor = [UIColor colorWithRed:45 / 255.0 green:255  / 255.0 blue:255 / 255.0 alpha:1];
//        aView.tag = 10003;
//        [self.view addSubview:cView];
//        [cView release];
//    
//        UIView *dView = [[UIView alloc] initWithFrame:CGRectMake(120, 130, 120, 40)];
//        dView.backgroundColor = [UIColor colorWithRed:45 / 255.0 green:255  / 255.0 blue:255 / 255.0 alpha:1];
//        aView.tag = 10004;
//        [self.view addSubview:dView];
//        [dView release];
//    
//        UIView *eView = [[UIView alloc] initWithFrame:CGRectMake(50, 190, 60, 30)];
//        eView.backgroundColor = [UIColor colorWithRed:45 / 255.0 green:255  / 255.0 blue:255 / 255.0 alpha:1];
//        aView.tag = 10005;
//        [self.view addSubview:eView];
//        [eView release];
//        UIView *fView = [[UIView alloc] initWithFrame:CGRectMake(170, 190, 60, 30)];
//       fView.backgroundColor = [UIColor colorWithRed:45 / 255.0 green:255  / 255.0 blue:255 / 255.0 alpha:1];
//        aView.tag = 10006;
//        [self.view addSubview:fView];
//        [fView release];
////    作业三
//    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 71)];
//        aView.backgroundColor = [UIColor colorWithRed:71 / 255.0 green:arc4random() % 256 / 255.0 blue:211 / 255.0 alpha:1];
//    
//        [self.view addSubview:aView];
//        [aView release];
//    UIView *p = [[UIView alloc] init];
//    p = aView;
//    for (NSInteger i = 0; i < 7; i++) {
//        for (NSInteger j = 0; j < 7; j++) {
//            
//            p.center =  CGPointMake(p.center.x + 40, p.center.y);
//            [self.view addSubview:p];
//            [p release];
//        }
//        p.center =  CGPointMake(p.center.x , p.center.y + 71);
//        [self.view addSubview:p];
//        [p release];
//    }
   // UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 71)];
//    for (NSInteger i = 0; i < 8; i++) {
//        
//                for (NSInteger j = 0; j < 8; j++) {
//                    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(j * self.view.frame.size.width / 8, i * self.view.frame.size.height / 8, 40, 71)];
//
//    //UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 71)];
//    aView.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1];
//    
//    [self.view addSubview:aView];
//    [aView release];
//                }
//    }

 //   [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    NSLog(@"%ld", self.view.subviews.count);

}
- (void)timerAction
{
     UIView *view1 = [self.view viewWithTag:10001];
     UIView *view14 = [self.view viewWithTag:10014];
    self.view.backgroundColor = view1.backgroundColor;
       for (NSInteger i = 2; i < 16; i++) {
         self.view.subviews[i].backgroundColor = self.view.subviews[(i + 1) % 16].backgroundColor;
    }
    view14.backgroundColor = self.view.backgroundColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
