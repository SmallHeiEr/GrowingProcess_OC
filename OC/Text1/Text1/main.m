//
//  main.m
//  Text1
//
//  Created by dllo on 16/1/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
    NSArray *con = [str componentsSeparatedByString:@"\n"];
    NSMutableArray *proArr = [NSMutableArray array];
    for (NSString *temp in con) {
        if (![temp hasPrefix:@" "]) {
            NSMutableArray *cityArr = [NSMutableArray array];
            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"proName", cityArr, @"city", nil];
            [proArr addObject:proDic];
            
        } else if (![temp hasPrefix:@"    "]) {
            NSMutableArray *areaArr = [NSMutableArray array];
            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
            
        } else {
            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
        }
    }
    
    NSLog(@"%@", proArr);
    
    
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    return 0;
}
