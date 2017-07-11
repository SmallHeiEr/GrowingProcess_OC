//
//  ViewController.m
//  1110
//
//  Created by dllo on 16/4/8.
//  Copyright © 2016年 dllo. All rights reserved.
//
#define URL @"http://wanapi.damai.cn/damai/getcity.json?source=10099&version=50305"
#import "ViewController.h"

#import "MyAFN.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//   
////    [manager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"text/plain", @"text/json", @"application/json", @"text/javascript", @"text/html", nil]];
//    
//    
//    
    
   
    [MyAFN GETWithTheURL:URL success:^(id responseObject) {
        
        
    } filed:^(id error) {
        
        
    }];
    
    
    
    
    
    
////    判断有无网络或者本地存不存在网络请求的缓存文件
//    Reachability *reach = [Reachability reachabilityForInternetConnection];
//
//    NetworkStatus status = [reach currentReachabilityStatus];
//    
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    
//    NSString *cacheFile = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
//    NSString *md5Str = [URL stringFromMD5Lowercase];
//    NSString *cachePath = [cacheFile stringByAppendingPathComponent:md5Str];
//    
//    if (status == 0 || [fileManager fileExistsAtPath:cachePath]) {
//        
//        id data = [NSKeyedUnarchiver unarchiveObjectWithFile:cachePath];
//        NSLog(@"%@", data);
//   
//     }
//    
//    else {
//    [manager GET:URL parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
////        NSLog(@"%@", responseObject);
////        存在cache下，大数据或缓存下载的东西都存到这里
////        用网址作为名字
//        //拿到cache文件夹路径
////        参数3：YES是展开路径    NO 省略/./././.caches
//       
////        归档，因为你不知道responseObject类型
//        BOOL isCache = [NSKeyedArchiver archiveRootObject:responseObject toFile:cachePath];
//        if (isCache) {
//            NSLog(@"缓存成功");
//        }
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        
//        NSLog(@"失败%@", error);
//    }];
//    
////    错误提示1016:不支持这个格式
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
