//
//  ViewController.m
//  练习
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
    self.scrollV.contentSize = CGSizeMake(414 * 21, 0);
    self.scrollV.pagingEnabled = YES;
    self.scrollV.contentOffset = CGPointMake(414, 0);
    [self.view addSubview:self.scrollV];
    [self.scrollV release];
    self.scrollV.delegate = self;
    for (NSInteger i = 0; i < 21; i++) {
        self.subSV = [[UIScrollView alloc]initWithFrame:CGRectMake(414 * i , 0, 414, 736)];
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
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
        imageV.image = [UIImage imageNamed:str];
        [self.subSV addSubview:imageV];
        [imageV release];
    }
    self.pageC = [[UIPageControl alloc]initWithFrame:CGRectMake(50, 500, 364, 30)];
    [self.pageC addTarget:self action:@selector(pageCAction:) forControlEvents:UIControlEventValueChanged];
    self.pageC.numberOfPages = self.scrollV.contentSize.width / 414 - 2;
    [self.view addSubview:self.pageC];
    [self.pageC release];
    self.pageIndex = 1;
}
- (void)pageCAction:(UIPageControl *)sender
{
    self.scrollV.contentOffset = CGPointMake(414 * (sender.currentPage + 1), 0);
}
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return scrollView.subviews.firstObject;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (scrollView == self.scrollV) {
    NSInteger Page =  scrollView.contentOffset.x / 414;
        if (0 == Page) {
            Page = 19;
            scrollView.contentOffset = CGPointMake(414 * 19, 0);
        } else if (20 == Page) {
            Page = 1;
            scrollView.contentOffset = CGPointMake(414 * 1, 0);
        }
        if (Page != self.pageIndex) {
            [[self.scrollV.subviews objectAtIndex:self.pageIndex] setZoomScale:1.0];
            self.pageC.currentPage = Page - 1;
            self.pageIndex = Page;
        }
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.sportTableV == tableView) {
        
        NSMutableArray *arr = [self.bigDic objectForKey:@"0"];
        News *new = [arr objectAtIndex:indexPath.row];
        if (3 == new.imgextra.count) {
            NewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"threeCell" forIndexPath:indexPath];
            [cell getThreeTitle:new.title ImageL:[[new.imgextra objectAtIndex:0] objectForKey:@"imgsrc"] ImageC:[[new.imgextra objectAtIndex:1] objectForKey:@"imgsrc"] ImageR:[[new.imgextra objectAtIndex:2]objectForKey:@"imgsrc"]];
            return cell;
            
        } else if (2 == new.imgextra.count) {
            NewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"twoCell" forIndexPath:indexPath];
            [cell getTwoTitle:new.title ImageL:[[new.imgextra objectAtIndex:0] objectForKey:@"imgsrc"]  ImageR:[[new.imgextra objectAtIndex:1] objectForKey:@"imgsrc"]];
            return cell;
        } else {
            NewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"oneCell" forIndexPath:indexPath];
            [cell getLeftTitle:new.title Digest:new.digest Image:new.imgsrc];
            return cell;
        }
    }
    else if (self.footballTableV == tableView) {
        NewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"footCell"];
        FootHead *foot = [[FootHead alloc]init];
        foot = [self.footArr objectAtIndex:indexPath.row];
        //        [cell.imageV sd_setImageWithURL:[NSURL URLWithString:foot.imgsrc] placeholderImage:[UIImage imageNamed:@"near.png"]];
        //        cell.label1.text = foot.title;
        
        NSString *time = [BackgrountViewController intervalSinceNow:foot.createtime];
        if ([time isEqualToString:@"60分钟前"]) {
            [cell getLeftTitle:foot.title Digest:foot.createtime Image:foot.imgsrc];
            //            cell.label2.text = foot.createtime;
        } else {
            [cell getLeftTitle:foot.title Digest:foot.createtime Image:[BackgrountViewController intervalSinceNow:foot.createtime]];
            //            cell.label2.text = [BackgrountViewController intervalSinceNow:foot.createtime];
        }
        return cell;
    } else {
        NewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NBACell"];
        FootHead *foot = [[FootHead alloc]init];
        foot = [self.NBAArr objectAtIndex:indexPath.row];
        
        //        [cell.imageV sd_setImageWithURL:[NSURL URLWithString:foot.imgsrc] placeholderImage:[UIImage imageNamed:@"near.png"]];
        //        cell.label1.text = foot.title;
        NSString *time = [BackgrountViewController intervalSinceNow:foot.createtime];
        if ([time isEqualToString:@"60分钟前"]) {
            //            cell.label2.text = foot.createtime;
            [cell getLeftTitle:foot.title Digest:foot.createtime Image:foot.imgsrc];
        } else {
            //            cell.label2.text = [BackgrountViewController intervalSinceNow:foot.createtime];
            [cell getLeftTitle:foot.title Digest:foot.createtime Image:[BackgrountViewController intervalSinceNow:foot.createtime]];
        }
        return cell;
    }
}
















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
