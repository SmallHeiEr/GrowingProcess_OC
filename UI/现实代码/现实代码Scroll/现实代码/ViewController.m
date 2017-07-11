//
//  ViewController.m
//  现实代码
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, retain)UIScrollView *scrolV;
@property (nonatomic, retain)UIPageControl *pageC;
@property (nonatomic, assign)NSInteger pageIndex;
@end
@implementation ViewController
- (void)dealloc
{
    [_scrolV release];
    [_pageC release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.scrolV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
    self.scrolV.contentOffset = CGPointMake(414, 0);
    self.scrolV.contentSize = CGSizeMake(414 * 21, 0);
    self.scrolV.pagingEnabled = YES;
    [self.view addSubview:self.scrolV];
    [self.scrolV release];
    self.scrolV.delegate = self;
    for (NSInteger i = 0; i < 21; i++) {
        NSString *str = [NSString stringWithFormat:@"image%ld.jpg", i];
        if (0 == i) {
            str = @"image19.jpg";
        } if (20 == i) {
            str = @"image1.jpg";
        }
        UIScrollView *subC = [[UIScrollView alloc]initWithFrame:CGRectMake(414 * i, 0, 414, 736)];
        subC.minimumZoomScale = 1;
        subC.maximumZoomScale = 5;
        subC.delegate = self;
        [self.scrolV addSubview:subC];
        [subC release];
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
        imageV.image = [UIImage imageNamed:str];
        [subC addSubview:imageV];
        [imageV release];
        
        
    }
    self.pageC = [[UIPageControl alloc]initWithFrame:CGRectMake(50, 500, 300, 30)];
    self.pageC.numberOfPages = 19;
    [self.pageC addTarget:self action:@selector(pageAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.pageC];
    [self.pageC release];
    self.pageIndex = 1;
}
- (void)pageAction:(UIPageControl *)sender
{
    self.scrolV.contentOffset = CGPointMake(414 * (sender.currentPage + 1), 0);
    
}
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return scrollView.subviews.firstObject;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (scrollView == self.scrolV) {
        NSInteger page = self.scrolV.contentOffset.x / 414;
        if (0 == page) {
            page = 19;
            self.scrolV.contentOffset = CGPointMake(414 * 19, 0);
        }
        if (0 == page) {
            page = 19;
            self.scrolV.contentOffset = CGPointMake(414 * 19, 0);
        }
        if (page == self.pageIndex) {
            [[self.scrolV.subviews objectAtIndex:self.pageIndex]setZoomScale:1.0];
        }
        self.pageIndex = page;
        self.pageC.currentPage = page - 1;
    }
}
    
    
    
    
    






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
