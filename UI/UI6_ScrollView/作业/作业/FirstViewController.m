//
//  FirstViewController.m
//  作业
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "FirstViewController.h"
#import "ReduceViewController.h"
@interface FirstViewController ()<UIScrollViewDelegate>
@property (nonatomic, retain)UIScrollView *scrollV;
@property (nonatomic, retain)UIScrollView *subSV;
@property (nonatomic, assign)NSInteger pageIndex;
@property (nonatomic, retain)UIPageControl *pageC;
@end

@implementation FirstViewController
- (void)dealloc
{
    [_pageC release];
    [_subSV release];
    [_scrollV release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.scrollV = [[UIScrollView alloc]initWithFrame:self.view.frame];
    self.scrollV.contentSize = CGSizeMake(self.view.frame.size.width * 21, 0);
    self.scrollV.pagingEnabled = YES;
    self.scrollV.contentOffset = CGPointMake(self.view.frame.size.width * self.index, 0);
    [self.view addSubview:self.scrollV];
    [self.scrollV release];
    self.scrollV.delegate = self;
    for (NSInteger i = 0; i < 21; i++) {
        self.subSV = [[UIScrollView alloc]initWithFrame:CGRectMake(self.view.frame.size.width * i , 0, self.view.frame.size.width, self.view.frame.size.height)];
        self.subSV.minimumZoomScale = 1;
        self.subSV.maximumZoomScale = 5;
        [self.scrollV addSubview:self.subSV];
        [self.subSV release];
        self.subSV.delegate = self;
        NSString *str = [NSString stringWithFormat:@"image%ld.jpg", i];
        if (0 == i) {
            str = @"image19.jpg";
        } if (20 == i) {
            str = @"image1.jpg";
        }
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        imageV.image = [UIImage imageNamed:str];
        [self.subSV addSubview:imageV];
        [imageV release];
    }
    self.pageC = [[UIPageControl alloc]initWithFrame:CGRectMake(50, 500, 364, 30)];
    [self.pageC addTarget:self action:@selector(pageCAction:) forControlEvents:UIControlEventValueChanged];
    self.pageC.numberOfPages = 19;
    self.pageC.currentPage = self.index - 1;
    [self.view addSubview:self.pageC];
    [self.pageC release];
    self.pageIndex = self.index;
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(380, 0, 34, 34)];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button release];
}
- (void)buttonAction:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}
- (void)pageCAction:(UIPageControl *)sender
{
    self.scrollV.contentOffset = CGPointMake(self.scrollV.frame.size.width * (sender.currentPage + 1), 0);
}
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return scrollView.subviews.firstObject;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (scrollView == self.scrollV) {
        NSInteger currentPageIndex =  scrollView.contentOffset.x / scrollView.frame.size.width;
        if (0 == currentPageIndex) {
            currentPageIndex = 19;
            scrollView.contentOffset = CGPointMake(scrollView.frame.size.width * 19, 0);
        } else if (20 == currentPageIndex) {
            currentPageIndex = 1;
            scrollView.contentOffset = CGPointMake(scrollView.frame.size.width * 1, 0);
        }
        if (currentPageIndex != self.pageIndex) {
            [[self.scrollV.subviews objectAtIndex:self.pageIndex] setZoomScale:1.0];
            self.pageC.currentPage = currentPageIndex - 1;
            self.pageIndex = currentPageIndex;
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     Get the new view controller using [segue destinationViewController].
     Pass the selected object to the new view controller.
}

*/
@end
