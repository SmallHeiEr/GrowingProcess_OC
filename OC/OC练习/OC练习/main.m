//
//  main.m
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction1.h"
int main(int argc, const char * argv[]) {
Fraction *frac1 = [[Fraction alloc] initWithNum:1 denom:2];
Fraction *frac2 = [[Fraction alloc] initWithNum:3 denom:4];
Fraction *newfrac1 = [frac1 addFraction:frac2];
    [newfrac1 info];
    Fraction *newfrac2 = [frac1 subFraction:frac2];
    Fraction *newfrac3 = [frac1 mulfraction:frac2];
    Fraction *newfrac4 = [frac1 divFraction:frac2];
    [newfrac2 info];
    [newfrac3 info];
    [newfrac4 info];
    
    
    
 
    
    
    
    
    return 0;
}
