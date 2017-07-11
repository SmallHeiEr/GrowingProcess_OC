//
//  main.m
//  OC111
//
//  Created by dllo on 15/12/29.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flower.h"
#import "Fruit.h"
int main(int argc, const char * argv[]) {
   
Flower *p = [[Flower alloc]initWithName:@"牡丹" money:50.5 colour:@"白色"];
    [p info];
    
    Flower *q = [Flower flowerWithName:@"牡丹" money:50.5 colour:@"白色"];
    [q info];
  /////////////////////////////////////
    
    
    
    Fruit *i = [[Fruit alloc]initWithName:@"苹果" colour:@"红" price:5.2];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
