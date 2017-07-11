//
//  ViewController.m
//  UI6_ScrollView
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (nonatomic, retain)UIScrollView *scrollV;
@property (nonatomic, retain)UIScrollView *subSV;
@property (nonatomic, assign)NSInteger pageIndex;
@property (nonatomic, retain)UIPageControl *pageC;
@end

@implementation ViewController
- (void)dealloc
{
    [_pageC release];
    [_subSV release];
    [_scrollV release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.scrollV = [[UIScrollView alloc]initWithFrame:self.view.frame];
//   重要 属性
    self.scrollV.contentSize = CGSizeMake(self.view.frame.size.width * 21, 0);
//    翻页效果
    self.scrollV.pagingEnabled = YES;
//    偏移 - 可读写
    self.scrollV.contentOffset = CGPointMake(self.view.frame.size.width, 0);
//    水平滚动条是否存在
    self.scrollV.showsHorizontalScrollIndicator = NO;
//    第一页和最后一页的回弹效果
    //self.scrollV.bounces = NO;
    [self.view addSubview:self.scrollV];
    [self.scrollV release];
//    签协议 -----设置代理人
    self.scrollV.delegate = self;
   
    
    
    
//    for循环铺照片
//    额外添加两张图片，第一张为最后一张，最后一张为第一张，起始显示第二张
    for (NSInteger i = 0; i < 21; i++) {
//        每张图都建一个负责缩放的scrollView；
//        注意x坐标
       self.subSV = [[UIScrollView alloc]initWithFrame:CGRectMake(self.view.frame.size.width * i , 0, self.view.frame.size.width, self.view.frame.size.height)];
        self.subSV.minimumZoomScale = 1;
        //    最大缩放比例
        self.subSV.maximumZoomScale = 5;
        //    当前缩放比例
        self.subSV.delegate = self;
        [self.scrollV addSubview:self.subSV];
        [self.subSV release];
        
        
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
    self.pageC.numberOfPages = self.scrollV.contentSize.width / self.scrollV.frame.size.width - 2;
    [self.view addSubview:self.pageC];
    [self.pageC release];
    
    
//    缩放-若想实现缩放与需要设置两个参数外加一个协议方法
//    最小缩放比例
//    scrollV.minimumZoomScale = 1;
////    最大缩放比例
//    scrollV.maximumZoomScale = 5;
////    当前缩放比例
//    scrollV.zoomScale = 1;
   
    self.pageIndex = 1;
    
}
- (void)pageCAction:(UIPageControl *)sender
{
   
    self.scrollV.contentOffset = CGPointMake(self.scrollV.frame.size.width * (sender.currentPage + 1), 0);
}
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return scrollView.subviews.firstObject;
    
}
//拖拽将要开始->拖拽ing->拖拽将要结束->拖拽已经结束->减速将要开始->减速已经结束;
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"减速结束");
//    如果是大scrollView
    if (scrollView == self.scrollV) {
//    用户滑动页面
   NSInteger currentPageIndex =  scrollView.contentOffset.x / scrollView.frame.size.width;
    NSLog(@"%ld",currentPageIndex);
//        最后一张和第一张相接
    if (0 == currentPageIndex) {
        currentPageIndex = 19;
     scrollView.contentOffset = CGPointMake(scrollView.frame.size.width * 19, 0);
    } else if (20 == currentPageIndex) {
        currentPageIndex = 1;
        scrollView.contentOffset = CGPointMake(scrollView.frame.size.width * 1, 0);
    }
//        翻页了
    if (currentPageIndex != self.pageIndex) {
//        还原之前缩放比例
        [[self.scrollV.subviews objectAtIndex:self.pageIndex] setZoomScale:1.0];
//        翻页点跟着动
        self.pageC.currentPage = currentPageIndex - 1;
//        更新页码
        self.pageIndex = currentPageIndex;
    }}
//    if (scrollView == self.subSV) {
//        if (self.a != currentPageIndex) {
//                    }
//    }
//   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
