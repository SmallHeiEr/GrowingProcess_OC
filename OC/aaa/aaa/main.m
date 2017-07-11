//
//  main.m
//  aaa
//
//  Created by dllo on 16/1/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    NSString *str = [NSString stringWithContentsOfFile: @"/Users/dllo/Downloads/作业/作业2/area.txt"
// encoding:NSUTF8StringEncoding error:nil];
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//        NSMutableDictionary *proDic = [NSMutableDictionary dictionary];
//        NSMutableArray *cityArr = [NSMutableArray array];
//        proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//        [proArr addObject:proDic];
//    }
//       else if (![temp hasPrefix:@"    "]) {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        }
//       else {
//           [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//       }
//    }
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业-2/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
    NSArray *arr = [str componentsSeparatedByString:@"\n"];
    NSMutableArray *proArr = [NSMutableArray array];
    for (NSString *temp in arr) {
        if (![temp hasPrefix:@" "]) {
            NSMutableArray *cityArr = [NSMutableArray array];
            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"proviceName", cityArr, @"city", nil];
            [proArr addObject:proDic];
        }
        else if (![temp hasPrefix:@"    "])
        {
            NSMutableArray *areaArr = [NSMutableArray array];
            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
        } else {
            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
        }
    }
   
    
    
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业-2/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"proviceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        }
//        else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        }
//        else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *city = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
//            [proArr addObject:proDic];
//        }
//        else if(![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *area = [NSMutableArray array];
//            NSMutableDictionary *city = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:city];
//        }
//        else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
    
    
    
    
    
    
    
    
//    NSArray *line = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in line) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        }else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *area = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//            
//        }else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    NSArray *line = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [
    
//    NSString *str = [NSString stringWithContentsOfURL: encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//            
//        }else if (![temp hasPrefix:@"    "] )
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//            
//        }else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject]objectForKey:@"area"] addObject:temp];
//        }
//    }
    NSLog(@"%@", proArr);
    
//    NSString *str = [NSString stringWithContentsOfURL:<#(nonnull NSURL *)#> encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        NSMutableArray *cityArr = [NSMutableArray array];
//        NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provineName", cityArr, @"city", nil];
//        [proArr addObject:proDic];
//    }
    
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        }else if(![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *area = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        }else{
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"]addObject:temp];
//        }
//    }
//    NSLog(@"%@", proArr);
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//            
//        }else if(![temp hasPrefix:@"    "]){
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        }else{
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject ] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    
//    NSLog(@"%@", proArr);
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *city = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
//            [proArr addObject:proDic];
//            
//        }else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *area = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        }else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject ] objectForKey:@"area"]addObject:temp];
//            
//        }
//    }
//    
//    NSLog(@"%@", proArr);
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
 //   NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        }else if (![temp hasPrefix:@"    "]){
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"]addObject:cityDic];
//        }else{
//            [[[[proArr.lastObject objectForKey:@"city"]lastObject]objectForKey:@"area"]addObject:temp];
//        }
//    }
//    NSLog(@"%@", proArr);
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/作业/作业2/area.txt" encoding:NSUTF8StringEncoding error:nil];
//    NSArray *con = [str componentsSeparatedByString:@"\n"];
//    NSMutableArray *proArr = [NSMutableArray array];
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//        NSMutableArray *city = [NSMutableArray array];
//        NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
//        [proArr addObject:proDic];
//    }
//        else if (![temp hasPrefix:@"    "]){
//            NSMutableArray *area = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        }else{
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject]objectForKey:@"area"]addObject:temp];
//        }
//    
//    }NSLog(@"%@", proArr);
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *city = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
//            [proArr addObject:proDic];
//            
//        } else if (![temp hasPrefix:@"    "]) {
//            NSMutableArray *area = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", area, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        }
//        else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject]objectForKey:@"area"] addObject:temp];
//        }
//    }
//    NSLog(@"%@", proArr);
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *city = [NSMutableArray array];
//            NSMutableDictionary *proDic= [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"province", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//         } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityDic = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityDic, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//            
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
//    for (NSString *temp in con) {
//        if (![temp hasPrefix:@" "]) {
//            NSMutableArray *cityArr = [NSMutableArray array];
//            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", cityArr, @"city", nil];
//            [proArr addObject:proDic];
//        } else if (![temp hasPrefix:@"    "])
//        {
//            NSMutableArray *areaArr = [NSMutableArray array];
//            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"cityName", areaArr, @"area", nil];
//            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
//        } else {
//            [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];
//        }
//    }
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    // NSLog(@"%@", proArr);
    return 0;
}
