//
//  ViewController.m
//  UI16_外传图片下载
//
//  Created by dllo on 16/3/2.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

#import "UIImageView+WebCache.h"

@interface ViewController ()
@property (nonatomic, retain) UIImageView *imageV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(150, 150, 80, 30);
    [button setTitle:@"加载图片" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(50, 200, 300, 200)];
    self.imageV.image = [UIImage imageNamed:@"picholder.png"];
    [self.view addSubview:self.imageV];
    [_imageV release];
    
    
    
}
- (void)buttonAction
{
//    [self.imageV sd_setImageWithURLStr:@"http://img4.duitang.com/uploads/item/201207/28/20120728105310_jvAjW.thumb.600_0.jpeg"];
    NSURL *url = [NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201207/28/20120728105310_jvAjW.thumb.600_0.jpeg"];
    [self.imageV sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"image18.jpg"]];
    
    [[SDWebImageManager sharedManager].imageCache calculateSizeWithCompletionBlock:^(NSUInteger fileCount, NSUInteger totalSize) {
        
        NSLog(@"缓存文件大小：%ld， 总大小：%ld", fileCount, totalSize);
    }];
    
//    清除内存缓存
    [[SDWebImageManager sharedManager].imageCache clearMemory];
//    清除磁盘缓存
   [[SDWebImageManager sharedManager].imageCache clearDisk];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
