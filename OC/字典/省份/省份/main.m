//
//  main.m
//  省份
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *arr = [str componentsSeparatedByString:@"\n"];
////    省
//    NSMutableArray *proArr = [NSMutableArray array];
////    城市
//    NSMutableArray *cityArr = [NSMutableArray array];
////    区
//    NSMutableArray *areaArr = [NSMutableArray array];
//    NSInteger j = -1;
//    NSInteger k = -1;
//    for (NSInteger i = 0; i < arr.count; i++) {
//        NSString *sub1 = [arr[i] substringToIndex:4];
//        NSString *sub2 = [arr[i] substringToIndex:1];
//        BOOL a = [@"    " isEqualToString:sub1];
//        BOOL b = [@" " isEqualToString:sub2];
//       if (a) {
//         NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:arr[i], @"areaName", nil];
//            [areaArr addObject:dic3];
//            [cityArr[k] setObject:arr[i] forKey:@"area"];
//        }
//        else if(!b) {
//            j++;
//        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:arr[i], @"provinceName", nil];
//            
//            [proArr addObject:dic];
//            }
//        else {
//       NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:arr[i], @"cityName", nil];
//            [cityArr addObject:dic2];
//            [proArr[j] setObject:arr[i] forKey:@"city"];
//            k++;
//        }
//    }
//    NSData *data = [NSJSONSerialization dataWithJSONObject:proArr options:NSJSONWritingPrettyPrinted error:nil];
//    NSString *str1 = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", str1);
////
//    
    NSString *contentStr = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
    NSArray *lineArr = [contentStr componentsSeparatedByString:@"\n"];
    
    NSMutableArray *proArr = [NSMutableArray array];
    for (NSString *lineStr in lineArr) {
        if (![lineStr hasPrefix:@" "]) {
            NSMutableDictionary *proDic = [NSMutableDictionary dictionary];
            [proDic setObject:lineStr forKey:@"provinceName"];
            NSMutableArray *cityArr = [NSMutableArray array];
            [proDic setObject:cityArr forKey:@"city"];
            [proArr addObject:proDic];
        }
        if ([lineStr hasPrefix:@"  "] && ![lineStr hasPrefix:@"    "]) {
            NSMutableDictionary *cityDic = [NSMutableDictionary dictionary];
            [cityDic setObject:lineStr forKey:@"cityName"];
            NSMutableArray *areaArr = [NSMutableArray array];
            [cityDic setObject:areaArr forKey:@"area"];
            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
        }
        if ([lineStr hasPrefix:@"    "]) {
            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:lineStr];
        }
    }
    
    NSLog(@"%@", proArr);
   
    

NSData *data = [NSJSONSerialization dataWithJSONObject:proArr options:NSJSONWritingPrettyPrinted error:nil];
NSString *str1 = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
NSLog(@"%@", str1);




    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
