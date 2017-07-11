//
//  NewsViewModel.m
//  MVVM
//
//  Created by dllo on 16/4/19.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "NewsViewModel.h"
#import "NewsCellModel.h"



@implementation NewsViewModel

+ (void)getDate:(void (^)(NSMutableArray *))newTableArr
{
    NSMutableArray *tableArr = [NSMutableArray array];
    NSString *urlStr = @"http://c.3g.163.com/nc/article/headline/T1348647909107/0-140.html";
    NSURL *url = [NSURL URLWithString:urlStr];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@", dic);
        
        NSArray *arr = dic[@"T1348647909107"];
        for (NSDictionary *d in arr) {
            NewsCellModel *model = [NewsCellModel alloc];
            [model setValuesForKeysWithDictionary:d];
            [tableArr addObject:model];
        }
//       调用block变量，（）里面写要传值的数据
        newTableArr(tableArr);
        
    }];
    [task resume];
}

@end
