//
//  ViewController.m
//  AFNetWorking
//
//  Created by dllo on 16/3/4.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *getB = [UIButton buttonWithType:UIButtonTypeSystem];
    getB.frame = CGRectMake(50, 100, 80, 30);
    [getB setTitle:@"GET异步" forState:UIControlStateNormal];
    [getB addTarget:self action:@selector(getAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:getB];
    UIButton *postB = [UIButton buttonWithType:UIButtonTypeSystem];
    postB.frame = CGRectMake(270, 100, 80, 30);
    [postB setTitle:@"POST同步" forState:UIControlStateNormal];
    [postB addTarget:self action:@selector(postAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:postB];
    
    UIButton *netB = [UIButton buttonWithType:UIButtonTypeSystem];
    netB.frame = CGRectMake(50, 150, 80, 30);
    [netB setTitle:@"识别网络" forState:UIControlStateNormal];
    [netB addTarget:self action:@selector(netAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:netB];
//    UIButton *postB = [UIButton buttonWithType:UIButtonTypeSystem];
//    postB.frame = CGRectMake(270, 100, 80, 30);
//    [postB setTitle:@"同步" forState:UIControlStateNormal];
//    [postB addTarget:self action:@selector(postAction) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:postB];
    
    
    
}
- (void)netAction
{
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    //开启监听
    [manager startMonitoring];
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知网络");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"无网络");

                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"WIFI网络");

                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"蜂窝网络");

                break;
            default:
                break;
        }
    }];
    
    
}
- (void)getAction
{
    NSString *urlStr = @"http://api.map.baidu.com/place/v2/search?query=银行&region=大连&output=json&ak=6E823f587c95f0148c19993539b99295";
    NSString *urlEncode = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
 
    //网络请求管理者类， 所有请求全由manager发起
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    设置支持所有的接口类型
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"text/json", @"application/json", @"text/javascript", @"text/html", nil];
    
    [manager GET:urlEncode parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"成功%@", responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"失败%@", error);
        
    }];
    
}
- (void)postAction
{
    NSString *urlStr = @"http://ipad-bjwb.bjd.com.cn/DigitalPublication/publish/Handler/APINewsList.ashx";
    
    NSURL *url = [NSURL URLWithString:urlStr];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    //body
    //20131129&startRecord=1&len=30&udid=1234567890&terminalType=Iphone&cid=213
    NSDictionary *para = @{@"date":@"20131129", @"startRecord": @"1", @"len":@"30", @"udid":@"1234567890", @"terminalType":@"Iphone", @"cid":@"213"};
    
    
    //网络请求管理者类， 所有请求全由manager发起
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    //    设置支持所有的接口类型
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"text/json", @"application/json", @"text/javascript", @"text/html", nil];
    
    [manager POST:urlStr parameters:para success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"成功%@", responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"失败%@", error);
        
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
