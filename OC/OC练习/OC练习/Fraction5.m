//
//  Fraction5.m
//  OC练习
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
#import "Fraction5.h"
@implementation Fraction5
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom{
    self = [super init];
    if (self) {
      self.num = num;
    self.denom = denom;
    [self reduce];  
    }
    return self;
}
-(NSInteger)gcdA:(NSInteger)a b:(NSInteger)b{
    while (b != 0) {
        NSInteger temp = b;
        b = a % b;
        a = temp;
    }return a;
}
-(void)reduce{
    NSInteger gcd = [self gcdA:self.num b:self.denom];
    self.num /= gcd;
    self.denom /= gcd;

}
-(Fraction5 *)addfraction:(Fraction5 *)frac5{
    NSInteger newNum = self.num * frac5.denom + self.denom * frac5.num;
    NSInteger newDenom = self.denom * frac5.denom;
    Fraction5 *newFraction = [[Fraction5 alloc]initWithNum:newNum denom:newDenom];
    return newFraction;

}
-(void)info{
    NSLog(@"%ld %ld", self.num, self.denom);
}
@end
