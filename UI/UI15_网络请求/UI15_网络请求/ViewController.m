//
//  ViewController.m
//  UI15_网络请求
//
//  Created by dllo on 16/3/1.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "LeafProgressView.h"

@interface ViewController () <NSURLSessionDownloadDelegate>

@property (nonatomic, retain) UIImageView *image;
@property (nonatomic, retain) NSURLSessionDownloadTask *downTask;
@property (nonatomic, retain) LeafProgressView *progressV;
@end

@implementation ViewController
- (void)dealloc
{
    [_progressV release];
    [_downTask release];
    [_image release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor cyanColor];
//    UIButton *getB = [UIButton buttonWithType:UIButtonTypeSystem];
//    getB.frame = CGRectMake(50, 50, 80, 30);
//    [getB setTitle:@"get异步" forState:UIControlStateNormal];
//    [getB addTarget:self action:@selector(getAction) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:getB];
//    //////////////////////
    UIButton *postB = [UIButton buttonWithType:UIButtonTypeSystem];
    postB.frame = CGRectMake(414 - 130, 50, 80, 30);
    [postB setTitle:@"post异步" forState:UIControlStateNormal];
    [postB addTarget:self action:@selector(postAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:postB];
//    //////////////////////////
//    UIButton *imageB = [UIButton buttonWithType:UIButtonTypeSystem];
//    imageB.frame = CGRectMake(414 / 2.0 - 40, 50, 80, 30);
//    [imageB setTitle:@"下载图片" forState:UIControlStateNormal];
//    [imageB addTarget:self action:@selector(imageAction) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:imageB];
//    
//    
//    self.image = [[UIImageView alloc]initWithFrame:CGRectMake(50, 90, 414 - 100, 200)];
//    self.image.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:self.image];
//    [self.image release];
    ///////////////////////////
    UIButton *movieB = [UIButton buttonWithType:UIButtonTypeSystem];
    movieB.frame = CGRectMake(414 / 2.0 - 40, 300, 80, 30);
    [movieB setTitle:@"下载视频" forState:UIControlStateNormal];
    [movieB addTarget:self action:@selector(movieAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:movieB];
    
    UIButton *suspendB = [UIButton buttonWithType:UIButtonTypeSystem];
    suspendB.frame = CGRectMake(50, 580, 80, 30);
    [suspendB setTitle:@"暂停" forState:UIControlStateNormal];
    [suspendB addTarget:self action:@selector(suspendAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:suspendB];
    UIButton *startB = [UIButton buttonWithType:UIButtonTypeSystem];
    startB.frame = CGRectMake(414 - 130, 580, 80, 30);
    [startB setTitle:@"继续" forState:UIControlStateNormal];
    [startB addTarget:self action:@selector(startAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startB];
    self.progressV = [[LeafProgressView alloc]initWithFrame:CGRectMake(50, 340, 414 - 100, 35)];
    [self.view addSubview:self.progressV];
    [_progressV release];

}
- (void)startAction
{
    [self.downTask resume];
}
//- (UIImage *)getImage
//{
//    UIGraphicsBeginImageContextWithOptions([UIScreen mainScreen].bounds.size, YES, 1);
//    
//    //设置截屏大小
//    
//    [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
//    
//    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
//    
//    UIGraphicsEndImageContext();
//    
//    CGImageRef imageRef = viewImage.CGImage;
//    CGRect rect = CGRectMake(0, 0, 414, 736);//这里可以设置想要截图的区域
//    
//    CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
//    UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
////    UIImage *ima = [ViewController compressImage:sendImage];
//    return sendImage;
//}
//+ (UIImage *)compressImage:(UIImage *)imgSrc
//{
////    50, 90, 414 - 100, 200
//    CGSize size = {314, 200};
//    UIGraphicsBeginImageContext(size);
//    CGRect rect = {{0,0}, size};
//    [imgSrc drawInRect:rect];
//    UIImage *compressedImg = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return compressedImg;
//}
- (void)suspendAction
{
    [self.downTask suspend];

}
- (void)playWithFilePath:(NSString *)filePath
{
//    if (nil == self.downTask) {
//        return;
//    }
    NSURL *url = [NSURL fileURLWithPath:filePath];
    AVPlayer *player = [AVPlayer playerWithURL:url];
//    用来显示视频
    AVPlayerLayer *playerL = [AVPlayerLayer playerLayerWithPlayer:player];
    playerL.frame = CGRectMake(50, 360, 414 - 100, 200);
//    添加显示
    [self.view.layer addSublayer:playerL];
//    开播
    [player play];
}
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location
{
    NSLog(@"下载后调用");
    //获取本地对应位置的路径
    NSString *cach = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    //拼接文件名字（系统建议的名字：response.suggestedFilename）
    NSString *file = [cach stringByAppendingPathComponent:downloadTask.response.suggestedFilename];
     NSLog(@"%@>>>>%@", cach, file);
    NSFileManager *fileM = [NSFileManager defaultManager];
    //将下载的数据有临时文件移到本地缓存路径
    [fileM moveItemAtPath:location.path toPath:file error:nil];
//    下载后调用视频处理方法
    [self playWithFilePath:file];
    [self.progressV stopLoading];

}
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    NSLog(@"下载过程中会多次调用，每次下载不一定多大的数据");
    NSLog(@"本次下载大小：%.2fKB， 已经下载大小：%.2fKB，总大小：%.2fKB，", bytesWritten / 1024.0, totalBytesWritten / 1024.0, totalBytesExpectedToWrite / 1024.0);
    self.progressV.progress = (CGFloat)totalBytesWritten / totalBytesExpectedToWrite;
    NSLog(@"%@", [@((NSInteger)(totalBytesWritten * 100 / totalBytesExpectedToWrite)) description]) ;
}

- (void)movieAction
{
    NSURL *url = [NSURL URLWithString:@"http://hc25.aipai.com/user/656/20448656/6167672/card/25033081/card.mp4?l=a"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
//    参数1：默认配置
//    参数2：代理人
//    参数3：在那个线程内执行（当前选择主线程）
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    
    //创建下载任务
    self.downTask = [session downloadTaskWithRequest:request];
    
    [self.downTask resume];
    [self.progressV startLoading];

}
//- (void)imageAction
//{
//    NSURL *url = [NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201207/28/20120728105310_jvAjW.thumb.600_0.jpeg"];
//    
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURLSessionDownloadTask *downImageTask = [session downloadTaskWithURL:url completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        
//        //获取本地对应位置的路径
//        NSString *cach = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
//        //拼接文件名字（系统建议的名字：response.suggestedFilename）
//        NSString *file = [cach stringByAppendingPathComponent:response.suggestedFilename];
//        
//        NSFileManager *fileM = [NSFileManager defaultManager];
//        //将下载的数据有临时文件移到本地缓存路径
//        [fileM moveItemAtPath:location.path toPath:file error:nil];
////        回到主线程执行block中的代码
//        dispatch_async(dispatch_get_main_queue(), ^{
//           
//            self.image.image = [UIImage imageWithContentsOfFile:file];
//            
//        });
//        
//    }];
//    [downImageTask resume];
////    [self.progressV startLoading];
//}
- (void)postAction
{
    NSString *urlStr = @"https://www.taijb6.com/aop/Test.php?money=3";
    //当网址有未名字符（中文），需要转码
    NSString *urlEncode = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    NSURL *url = [NSURL URLWithString:urlEncode];
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    //配置（默认配置）
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //创建请求任务，当异步请求完成会调用block
    NSURLSessionDataTask *gettask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
 
       
        
    }];
    //开始任务
    [gettask resume];
    

}
- (void)getAction
{
    NSString *urlStr = @"http://ipad-bjwb.bjd.com.cn/DigitalPublication/publish/Handler/APINewsList.ashx";
       NSURL *url = [NSURL URLWithString:urlStr];
    
    

//    可设置超时时间
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:50];
    
    
    
    //post新增， 添加body体；
    request.HTTPMethod = @"POST";
//    将网址转为二进制流
    NSString *bodyStr = @"date=20131129&startRecord=1&len=30&udid=1234567890&terminalType=Iphone&cid=213";
    NSData *bodyData = [bodyStr dataUsingEncoding:NSUTF8StringEncoding];
    //    将二进制流添加进请求
    request.HTTPBody = bodyData;
    
    //配置（默认配置）
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //创建请求任务，当异步请求完成会调用block
     NSURLSessionDataTask *gettask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSMutableDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];

        
    }];
    //开始任务
    [gettask resume];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
