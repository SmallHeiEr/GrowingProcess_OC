//
//  ViewController.m
//  现实代码
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, retain)UIScrollView *firstSV;
@property (nonatomic, retain)UIPageControl *firstPC;
@property (nonatomic, assign)NSInteger firstPI;
@end
@implementation ViewController
- (void)dealloc
{
    [_firstSV release];
    [_firstPC release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.firstSV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
    self.firstSV.contentOffset = CGPointMake(414, 0);
    self.firstSV.contentSize = CGSizeMake(414 * 21, 0);
    self.firstSV.pagingEnabled = YES;
    [self.view addSubview:self.firstSV];
    [self.firstSV release];
    self.firstSV.delegate = self;
    for (NSInteger i = 0; i < 21; i++) {
        NSString *str = [NSString stringWithFormat:@"image%ld.jpg", i];
        if (0 == i) {
            str = @"image19.jpg";
        } if (20 == i) {
            str = @"image1.jpg";
        }
        UIScrollView *sub = [[UIScrollView alloc]initWithFrame:CGRectMake(414 * i, 0, 414, 736)];
        sub.minimumZoomScale = 1;
        sub.maximumZoomScale = 5;
        sub.delegate= self;
        [self.firstSV addSubview:sub];
        [sub release];
        UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
        image.image = [UIImage imageNamed:str];
        [sub addSubview:image];
        [image release];
    }
    self.firstPC = [[UIPageControl alloc]initWithFrame:CGRectMake(50, 500, 300, 30)];
    self.firstPC.numberOfPages = 19;
    [self.firstPC addTarget:self action:@selector(pageAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.firstPC];
    [self.firstPC release];
    self.firstPI = 1;
    
    
    
    
    
    
}
- (void)pageAction:(UIPageControl *)sender
{
    self.firstSV.contentOffset = CGPointMake(414 * (sender.currentPage + 1), 0);
    
    
}
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.firstSV.subviews.firstObject;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (scrollView == self.firstSV) {
        NSInteger page = self.firstSV.contentOffset.x / 414;
        if (0 == page) {
            page = 19;
            self.firstSV.contentOffset = CGPointMake(414 * 19, 0);
        } if (20 == page) {
            page = 1;
            self.firstSV.contentOffset = CGPointMake(414 * 1, 0);
        }
        if (page == self.firstPI) {
            [[self.firstSV.subviews objectAtIndex:self.firstPI]setZoomScale:1.0];
        }
        self.firstPI = page;
        self.firstPC.currentPage = page - 1;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
