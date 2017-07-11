//
//  main.m
//  练习111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//    NSInteger a = 100;
//    NSNumber *numA = [NSNumber numberWithInteger:a];
//    NSInteger b = [numA integerValue];
//    NSLog(@"%ld", b);
//    //2.数组(NSArrya)
//    NSArray *array = [NSArray arrayWithObjects:@"一号", @"二号", @"三号", @"四号", @"五号", nil];
////    快速创建一个不可变数组
//    NSArray *array1 = @[@"77", @"88", @"99", @"55"];
////    NSLog(@"%@", array);
////    NSLog(@"%@", array1);
////    
////    NSLog(@"%@", [array objectAtIndex:2]);
////    NSLog(@"%@", array[2]);
////    NSLog(@"%ld", [array indexOfObject: @"二号"]);
////    NSLog(@"第一个值是：%@", [array firstObject]);
////    NSLog(@"最后一个值:%@", [array lastObject]);
////    NSLog(@"%d", [array containsObject:@"一号"]);	
////    BOOL c = [array containsObject:@"三号"];
////    NSLog(@"%d", c);
////    NSString *nsstringJoin = [array componentsJoinedByString:@"/"];
////    NSLog(@"%@", nsstringJoin);
////    NSArray *separArr = [@"im a marrt" componentsSeparatedByString:@"m"];
////    NSLog(@"%@", separArr);
    NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:@"yihao", @"erhao", @"sanhao", nil];
    [mutableArr addObject:@"sihao"];
////    NSLog(@"%@", mutableArr);
////    //[mutableArr addObjectsFromArray:array];
////    [mutableArr addObject:array];
////    NSLog(@"%@", mutableArr);
//   // NSLog(@"%@", mutableArr[4][0]);
////    像某一个下标插入一个元素（insert）注意不能越界, 最大值为length
    [mutableArr insertObject:@"^_^" atIndex:3];
        NSLog(@"插入: %@", mutableArr);
////    删除（remove）
//    //删除指定元素
//    //    [mutableArr removeObjectAtIndex:0];
//    //    NSLog(@"删除: %@", mutableArr);
//    //    [mutableArr removeObject:@"wanger"];
//    //    NSLog(@"删除: %@", mutableArr);
//    
//    //从指定范围内删除
//    //    [mutableArr removeObject:@"wanger" inRange:NSMakeRange(0, 3)];
//    //    NSLog(@"删除: %@", mutableArr);
//    //删除最后一个元素
//    //    [mutableArr removeLastObject];
//    //    NSLog(@"删除: %@", mutableArr);
//    //删除所有元素
//    //    [mutableArr removeAllObjects];
//    //    NSLog(@"
////    交换（exchange）
//    //将指定下标位置元素替换为指定的元素
////    [mutableArr replaceObjectAtIndex:2 withObject:@"^_^"];
////    NSLog(@"替换: %@", mutableArr);
////    
////    //将指定下标的两个元素进行交换
////    [mutableArr exchangeObjectAtIndex:0 withObjectAtIndex:2];
////    NSLog(@"替换: %@", mutableArr);
////    oc中数组的遍历
////    for（每次循环取出的元素类型 ＊变量名 in 容器对象）｛
////    循环体使用 取出的变量 要做的事
////    NSLog(@"%@", temp);
////    ｝
////    相同变量类型
////    id 是oc中的通用对象类型
////    for (NSString * tmpStr in array)
////    {
////        NSLog(@"%@", tmpStr);
////    }
////    不同变量类型
////    for (id tem in array1) {
////        NSLog(@"%@", tem);
////    }
    
    
//        NSInteger a = 100;
//        NSNumber *numA = [NSNumber numberWithInteger:a];
//        NSInteger b = [numA integerValue];
//        NSLog(@"%ld",b);
//        
//        NSArray *array = [NSArray arrayWithObjects:@"一号"@"二号", @"三号", @"四号" , nil];
//        NSArray *array1 = @[@"77", @"55", @"66", @"33"];
//        NSLog(@"%@", [array objectAtIndex:2]);
//        NSLog(@"%@", array[2]);
//        NSLog(@"%ld", [array indexOfObject:@"二号"]);
//        NSLog(@"%@", [array firstObject]);
//        NSLog(@"%@", [array lastObject]);
//        NSLog(@"%d", [array containsObject:@"一号"]);
//        BOOL c = [array containsObject:@"一号"];
//        NSString *nsstringJoin = [array componentsJoinedByString:@"/"];
//        NSArray *separArr = [@"im a marrt" componentsSeparatedByString:@"m"];
//        NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:@"yihao", "erhao", "sanhao", nil];
//        [mutableArr addObject:@"sihao"];
//        [mutableArr addObject:array];
//        [mutableArr addObjectsFromArray:array];
//        [mutableArr insertObject:@"^_^" atIndex:3];
//        [mutableArr removeObject:@"sanhao"];
//        [mutableArr removeLastObject];
//        [mutableArr removeAllObjects];
//        [mutableArr replaceObjectAtIndex:2 withObject:@"^_^"];
//        [mutableArr exchangeObjectAtIndex:0 withObjectAtIndex:2];
//        for (NSString * tmpStr in array) {
//            NSLog(@"%@", tmpStr);
//        }
//    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
