//
//  main.m
//  OC222
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
  
    
    Student *p = [[Student alloc]initWithName:@"longlong" genter:@"m" age:22 number:15 mark:74];
    [p info];
    [p setName:@"long"];
    p.name = @"lo";
    p.age = 22;
    NSLog(@"%lu", p.name.length);
    
    [p rele]

    
    
    
    
    
    
    
    return 0;
}
