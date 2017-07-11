//
//  MyAFN.m
//  1110
//
//  Created by dllo on 16/4/8.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "MyAFN.h"
#import "AFNetworking.h"
#import "NSString+MD5.h"
#import "Reachability.h"
@implementation MyAFN
+ (void)GETWithTheURL:(NSString *)url success:(void(^)(id responseObject))response filed:(void(^)(id error))err
{
AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

//    判断有无网络或者本地存不存在网络请求的缓存文件
Reachability *reach = [Reachability reachabilityForInternetConnection];

NetworkStatus status = [reach currentReachabilityStatus];

NSFileManager *fileManager = [NSFileManager defaultManager];

NSString *cacheFile = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];

    NSString *md5Str = [url stringFromMD5Lowercase];

    NSString *cachePath = [cacheFile stringByAppendingPathComponent:md5Str];


    if (status == 0 || [fileManager fileExistsAtPath:cachePath]) {
    
    id data = [NSKeyedUnarchiver unarchiveObjectWithFile:cachePath];
    NSLog(@"由本地缓存得来的%@", data);
        response(data);
        
    
}

else {
    [manager GET:url parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //        NSLog(@"%@", responseObject);
        //        存在cache下，大数据或缓存下载的东西都存到这里
        //        用网址作为名字
        //拿到cache文件夹路径
        //        参数3：YES是展开路径    NO 省略/./././.caches
        
        //        归档，因为你不知道responseObject类型
        BOOL isCache = [NSKeyedArchiver archiveRootObject:responseObject toFile:cachePath];
        if (isCache) {
            NSLog(@"缓存成功");
        }
//      成功要把数据传出去
        
        response(responseObject);
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"失败%@", error);
        err(error);
    }];
    
    //    错误提示1016:不支持这个格式
}
}
@end
