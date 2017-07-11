 //
//  MusicViewController.m
//  播放器
//
//  Created by dllo on 16/3/17.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "MusicViewController.h"

@interface MusicViewController ()<UIScrollViewDelegate, UITableViewDataSource, UITableViewDelegate>
@property (retain, nonatomic) UIScrollView *scrollV;
@property (retain, nonatomic) UISegmentedControl *seg;
@property (retain, nonatomic) UIScrollView *scrollV1;
@property (retain, nonatomic) UIPageControl *page;
@property (retain, nonatomic) UITableView *tableV;

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
#warning 大scroll
    self.scrollV = [[UIScrollView alloc]initWithFrame:self.view.frame];
    self.scrollV.contentSize = CGSizeMake(self.view.frame.size.width * 5, self.view.frame.size.height);
    [self.view addSubview:self.scrollV];
    //    翻页效果
    self.scrollV.pagingEnabled = YES;
    //    水平滚动条是否存在
    self.scrollV.showsHorizontalScrollIndicator = NO;
    //    第一页和最后一页的回弹效果
    //self.scrollV.bounces = NO;
    //    签协议 -----设置代理人
    self.scrollV.delegate = self;
    [self.scrollV release];
    [self.scrollV release];
    
    self.seg = [[UISegmentedControl alloc]initWithItems:@[@"热门", @"排行", @"搜索", @"我的"]];
    self.seg.selectedSegmentIndex = 0;
    self.seg.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height / 24);
    //    注意触发方式
    [self.seg addTarget:self action:@selector(segAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.seg];
    [self.seg release];
#warning 小scroll1
    self.scrollV1 = [[UIScrollView alloc]initWithFrame:CGRectMake(0, self.seg.frame.origin.y + self.seg.frame.size.height + 10, self.view.frame.size.width, self.view.frame.size.height / 4)];
    self.scrollV1.backgroundColor = [UIColor yellowColor];
    self.scrollV1.contentSize = CGSizeMake(self.view.frame.size.width * 5, self.view.frame.size.height / 4);
    //    翻页效果
    self.scrollV1.pagingEnabled = YES;
    //    水平滚动条是否存在
    self.scrollV1.showsHorizontalScrollIndicator = NO;
    //    第一页和最后一页的回弹效果
    self.scrollV1.bounces = YES;
    //    签协议 -----设置代理人
    self.scrollV1.delegate = self;
    [self.scrollV addSubview:self.scrollV1];
    [self.scrollV1 release];
    self.page = [[UIPageControl alloc]initWithFrame:CGRectMake(self.scrollV1.frame.size.width / 4 * 3, self.scrollV.frame.origin.y + self.scrollV1.frame.size.height / 10 * 11, self.scrollV1.frame.size.width / 4, self.scrollV1.frame.size.height / 6)];
    self.page.numberOfPages = 5;
    [self.page addTarget:self action:@selector(pageCAction:) forControlEvents:UIControlEventValueChanged];
    //    未选中颜色
    self.page.pageIndicatorTintColor = [UIColor redColor];
    //    当前选中颜色
    self.page.currentPageIndicatorTintColor = [UIColor greenColor];
    [self.scrollV addSubview:self.page];
    [self.page release];
    
#warning TableView
    self.tableV = [[UITableView alloc]initWithFrame:CGRectMake(0, self.scrollV1.frame.origin.y + self.scrollV1.frame.size.height + 10, self.view.frame.size.width, self.view.frame.size.height - (self.scrollV1.frame.origin.y + self.scrollV1.frame.size.height + 10 + 49)) style:UITableViewStylePlain];
    self.tableV.delegate = self;
    self.tableV.dataSource = self;
    [self.scrollV addSubview:self.tableV];
    [self.tableV release];
    
//    [self.tableV registerClass:nil forCellReuseIdentifier:@"cell"];
    
    
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    static NSString *cellStr = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellStr];
    if (nil == cell) {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr]autorelease];
    }
    return cell;
}
- (void)pageCAction:(UIPageControl *)sender
{
    NSLog(@"选中点位置：%ld", sender.currentPage);
    self.scrollV1.contentOffset = CGPointMake(self.view.frame.size.width * self.page.currentPage, 0);
    

}
- (void)segAction:(UISegmentedControl *)sender
{
    self.scrollV.contentOffset = CGPointMake(self.view.frame.size.width * sender.selectedSegmentIndex, 0);
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger currentPageIndex =  scrollView.contentOffset.x / scrollView.frame.size.width;
    
    if (scrollView == self.scrollV) {
        
        //        翻页了
        if (self.seg.selectedSegmentIndex != currentPageIndex) {
            //        翻页点跟着动
            self.seg.selectedSegmentIndex = currentPageIndex;
            
        }
        [self.view bringSubviewToFront:self.seg];
    }
    else {
        
        //        翻页了
        if (self.page.currentPage != currentPageIndex) {
            
            //        翻页点跟着动
            self.page.currentPage = currentPageIndex;
            //        更新页码
            
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
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)dealloc
{
    [_scrollV release];
    [_scrollV1 release];
    [_page release];
    [_seg release];
    [_tableV release];
    [super dealloc];
}
@end
