//
//  main.m
//  字典
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "GuanLi.h"
int main(int argc, const char * argv[]) {
  
   //不可变字典
//    //value-key 键值对
//    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"班长", @"name", @"女", @"sex", @"瑜伽", @"hobby", nil];
////    访问字典中的元素
//    NSLog(@"%@", [dic objectForKey:@"sex"]);
////    访问所有的key
//    NSLog(@"%@", dic.allKeys);
////    遍历所有元素
//    for (NSInteger i = 0; i < dic.allKeys.count; i++){
////        先找到key
//        NSString *key = [dic.allKeys objectAtIndex:i];
////        再通过key访问value
//        NSLog(@"%@", [dic objectForKey:key]);
//    }
////    快速枚举的方式遍历字典
////    注意遍历字典得到的是key
////    注意快速枚举中不可改变被遍历的数组／集合／字典（collection类型）
//    for (NSString *key in dic) {
//        NSLog(@"%@", [dic objectForKey:key]);
//    }
//    //可变字典
//    NSMutableDictionary *dicM = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"龙龙", @"name", @"小", @"feature", @"搞基", @"hobby", nil];
//    NSMutableDictionary *dicM1 = [NSMutableDictionary dictionary];
////    添加／修改
////    若key存在就是修改，否则添加
//    [dicM setObject:@"台龟" forKey:@"pet"];
//    
////    删除
//    [dicM removeObjectForKey:@"name"];
////    查－访问
//      NSLog(@"%@", [dicM objectForKey:@"name"]);
    
    ///////////////////////////////////
    ////////////////////////////////
    /////////////////////////////
    //////////////////////////
    ///////////////////////
    ////////////////////
    Contact *per1 = [[Contact alloc] initWithName:@"LongLong" sex:@"m" phone:110 address:@"朝阳" group:@"同学" age:22];
    Contact *per2 = [[Contact alloc] initWithName:@"Longgui" sex:@"n" phone:112 address:@"朝阳" group:@"同学" age:23];
    Contact *per3 = [[Contact alloc] initWithName:@"TaiGui" sex:@"m" phone:119 address:@"朝阳" group:@"同学" age:24];
    Contact *per4 = [[Contact alloc] initWithName:@"TaiWan" sex:@"n" phone:114 address:@"朝阳" group:@"同学" age:25];
    Contact *per5 = [[Contact alloc] initWithName:@"ban🐶"  sex:@"m" phone:111
        address:@"大连" group:@"同学" age:26];
   
    GuanLi *manage = [[GuanLi alloc] init];
    [manage addPer:per1];
    
    
    
    
//   创建数组
//    NSMutableArray *L = [[NSMutableArray alloc]initWithObjects:per1, per2, nil];
//    NSMutableArray *T = [[NSMutableArray alloc]initWithObjects:per3, per4, nil];
//    //    创建字典
//    NSMutableDictionary *contact = [[NSMutableDictionary alloc]initWithObjectsAndKeys:L, @"L", T, @"T", nil];
//        for (NSString *key in contact) {
//            NSMutableArray *arr = [contact objectForKey:key];
//        for (Contact *per in arr) {
//            [per info];
//        }}
//    for (NSInteger i = 0; i < contact.allKeys.count; i++) {
////        通过下标找到key
//        NSString *key = [contact.allKeys objectAtIndex:i];
////        通过key找到arr
//        NSMutableArray *arr = [contact objectForKey:key];
////        遍历arr
//        for (NSInteger j = 0; j < arr.count; j++) {
//           Contact *per = [arr objectAtIndex:j];
//            [per info];
//        }}
//    //    [dicM setObject:@"台龟" forKey:@"pet"];
    
////    NSMutableArray *S = [contact objectForKey:@"T"];
////    [T addObject:per5];
//    [per5 addPer:per5 contact:contact];
    
//    NSMutableArray *arrTemp = [contact objectForKey:@"B"];
//    if (nil == arrTemp) {
////        创建数组
//        arrTemp = [NSMutableArray array];
////        将数组加进字典
//        [contact setObject:arrTemp forKey:@"B"];
//        }
////    添加
//        [arrTemp addObject:per5];
//  // 删除某个分组的全部联系人
//    删除k
    
    
    
    
    
    
    
    
    //NSLog(@"%@", L.per1.name);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    return 0;
}
