//
//  ReduceViewController.m
//  作业
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ReduceViewController.h"
#import "FirstViewController.h"
@interface ReduceViewController ()
@property (nonatomic, retain)FirstViewController *firstVC;

@end

@implementation ReduceViewController
- (void)dealloc
{
    [_firstVC release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scroll = [[UIScrollView alloc]initWithFrame:self.view.frame];
    scroll.contentSize = CGSizeMake(0, self.view.frame.size.height * 4);
    scroll.pagingEnabled = YES;
    [self.view addSubview:scroll];
    [scroll release];
   // scroll
    for (NSInteger i = 0; i < 10; i++) {
    for (NSInteger j = 0; j < 2; j++) {
        NSString *str = [NSString stringWithFormat:@"image%ld.jpg", i * 2 + j + 1];
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(25, 60, 172, 172)];
                   imageV.image = [UIImage imageNamed:str];
            [scroll addSubview:imageV];
            [imageV release];
        UIButton *button = [[UIButton alloc]initWithFrame:imageV.frame];
        [scroll addSubview:button];
        imageV.center = CGPointMake(imageV.center.x + 206 * j, imageV.center.y + 245 * i);
        button.tag = 10000 + i * 2 + j + 1;
        button.center = imageV.center;
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        }
}
       
    
    
}
//- (void)setC
//{   //self.firstVC = [[FirstViewController alloc]init];
//    
//    UIPageControl *pageC = [[UIPageControl alloc]initWithFrame:CGRectMake(50, 500, 364, 30)];
//    pageC.numberOfPages = self.a;
//    [self.view addSubview:pageC];
//    [pageC release];
//    
//
//}
//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        [self setC];
//    }
//    return self;
//}
- (void)buttonAction:(UIButton *)sender
{
    self.firstVC = [[FirstViewController alloc]init];
    self.firstVC.index = sender.tag - 10000;
    [self presentViewController:self.firstVC animated:YES completion:^{
        NSLog(@"切换完成会执行此处");
    }];
    [self.firstVC release];
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
