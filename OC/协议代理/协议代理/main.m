//
//  main.m
//  协议代理
//
//  Created by dllo on 16/1/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "System.h"
#import "Developer.h"
int main(int argc, const char * argv[]) {
  
    System *sys = [[System alloc] init];
//    假设用户点击了return按键，系统会自动调用此方法
    
    Developer *dev = [[Developer alloc] init];
    //[dev functionHandle]
    sys.delegate = dev;
    [sys returnHandle];

    return 0;
}
