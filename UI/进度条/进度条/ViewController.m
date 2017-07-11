//
//  ViewController.m
//  进度条
//
//  Created by dllo on 16/3/2.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "LeafProgressView.h"
#import "UIImageView+WebCache.h"

@interface ViewController () <NSURLSessionDownloadDelegate>
@property (nonatomic, retain) NSURLSessionDownloadTask *downTask;
@property (nonatomic, retain) LeafProgressView *progressV;
//@property (nonatomic, retain) AVPlayerLayer *playerL;
@property (nonatomic, retain) UIImageView *imageV;

@end

@implementation ViewController
- (void)dealloc
{
    [_imageV release];
//    [_playerL release];
    [_progressV release];

    [_downTask release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(414 / 2.0 - 40, 50, 80, 30);
    [button setTitle:@"下载视频" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.progressV = [[LeafProgressView alloc]initWithFrame:CGRectMake(50, 340, 414 - 100, 35)];
    [self.view addSubview:self.progressV];
    [_progressV release];
    
//    self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(50, 90, 414 - 100, 200)];
//    self.imageV.image = [UIImage imageNamed:@"picholder.png"];
//    [self.view addSubview:self.imageV];
//    [_imageV release];
    

    
}
- (void)playWithFilePath:(NSString *)filePath
{
//        if (nil == self.downTask) {
//            return;
//        }
    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    AVPlayer *player = [AVPlayer playerWithURL:url];
    AVPlayerLayer *playerL = [AVPlayerLayer playerLayerWithPlayer:player];
   playerL.frame = CGRectMake(50, 90, 414 - 100, 200);
    [self.view.layer addSublayer:playerL];
//    [self.imageV sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"image18.jpg"]];
    
       [player play];
}
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location
{
    NSString *cach = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    NSString *file = [cach stringByAppendingPathComponent:downloadTask.response.suggestedFilename];
    NSFileManager *fileM = [NSFileManager defaultManager];
    [fileM moveItemAtPath:location.path toPath:file error:nil];
    [self playWithFilePath:file];
    [self.progressV stopLoading];

}
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    self.progressV.progress = (CGFloat)totalBytesWritten / totalBytesExpectedToWrite;

}
- (void)buttonAction
{
    NSURL *url = [NSURL URLWithString:@"http://hc25.aipai.com/user/656/20448656/6167672/card/25033081/card.mp4?l=a"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //    参数2：代理人
    //    参数3：在那个线程内执行（当前选择主线程）
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    self.downTask = [session downloadTaskWithRequest:request];
     [self.downTask resume];
    [self.progressV startLoading];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
