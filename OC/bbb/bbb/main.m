//
//  main.m
//  bbb
//
//  Created by dllo on 16/1/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *pa = [NSMutableArray array];
//    for (NSString *tp in con) {
//        if (![tp hasPrefix:@" "]) {
//            NSMutableArray *ca = [NSMutableArray array];
//            NSMutableDictionary *pd = [NSMutableDictionary dictionaryWithObjectsAndKeys:tp, @"provinceName", ca, @"city", nil];
//            [pa addObject:pd];
//        }
// else if (![tp hasPrefix:@"    "]) {
//           NSMutableArray *aa = [NSMutableArray array];
//        NSMutableDictionary *cd = [NSMutableDictionary dictionaryWithObjectsAndKeys:tp, @"cityName", aa, @"area", nil];
//     [[pa.lastObject objectForKey:@"city"] addObject:cd];
//     
// }else{[[[[pa.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:tp];
//     
// }
//    }
//        
//    NSLog(@"%@", pa);
//    
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "]) {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"]addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//        NSLog(@"%@", proArr);
//    NSString *str = [NSString stringWithContentsOfFile:@"" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *city = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@" "]) {
//            NSMutableArray *area= [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {[[[[proArr.lastObject objectForKey:@"city"]lastObject]objectForKey:@"area"]addObject:temp];
//    }
//        NSLog(@"%@", proArr);
//    
    
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//            
//        } else if (![temp hasPrefix:@"    "]) {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//            
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"]lastObject]objectForKey:@"area"]addObject:temp];
//        }
//    } NSLog(@"%@", proArr);
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject::proDic];
//            
//        } else if (![temp hasPrefix:@" "]) {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//            
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"]lastObject]objectForKey:@"area"]addObject:temp];
//        }
//    }
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if ([temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else  if ([temp hasPrefix:@"    "]) {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"]lastObject] objectForKey:@"area"]addObject:temp];
//        }
//    }
//    
//    NSLog(@"%@", proArr);
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "]) {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    } NSLog(@"%@", proArr);
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//                  NSMutableArray *cityArr = [NSMutableArray array];
//        NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//        [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "]) {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"]lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    } NSLog(@"%@", proArr);
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//           
//        NSMutableArray *city = [NSMutableArray array];
//        NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
//        [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "]) {
//            
//            NSMutableArray *area = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    
//    } NSLog(@"%@", proArr);
    
    
  
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
