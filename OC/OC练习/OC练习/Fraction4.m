//
//  Fraction4.m
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Fraction4.h"

@implementation Fraction4
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom{
    self = [super init];
    self.num = num;
    self.denom =denom;
    [self yuefen];
    return self;
}
-(NSInteger)gcdA:(NSInteger)a b:(NSInteger)b{
    while (b != 0) {
        NSInteger temp = b;
        b = a % b;
        a = temp;
        }
    return a;
}
-(void)yuefen{
    NSInteger gcd = [self gcdA:self.num b:self.denom];
    self.num /= gcd;
    self.denom /= gcd;
    }
-(Fraction4 *)addfraction:(Fraction4 *)frac4
{   NSInteger newNum = self.num * frac4.denom + self.denom * frac4.num;
    NSInteger newDenom = self.denom *frac4.denom;
    Fraction4 *newFraction = [[Fraction4 alloc]initWithNum:newNum denom:newDenom];
    return newFraction;
}

@end
