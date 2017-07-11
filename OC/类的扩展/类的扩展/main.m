//
//  main.m
//  类的扩展
//
//  Created by dllo on 16/1/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Test.h"


















int main(int argc, const char * argv[]) {
   NSString *str = @"aaa";
    [str sayHi];
    NSString * str2 = [str getFirstStr];
//    NSString *str1 = [NSString alloc]sayHi
    //NSString *str3 = [str daxie];
    NSLog(@"%@", str2);
    //NSLog(@"%@", str3);
    return 0;
}
