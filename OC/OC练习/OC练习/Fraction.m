//
//  Fenshu.m
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
#import "Fraction.h"
@implementation Fraction
- (instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom
{
    self = [super init];
    if (self) {
        self.num = num;
        self.denom = denom;
        [self reduce];//在初始化方法中调用约分方法
    }
    return self;
}
//计算最大公约数方法
- (NSInteger)gcdA:(NSInteger)a b:(NSInteger)b
{while (b != 0) {
        NSInteger temp = b;
        b = a % b;
        a = temp;
    }
    //NSLog(@"最大公约数: %ld", a);
    return a;
}
//约分
- (void)reduce
{//求自己的最大公约数
    NSInteger gcd = [self gcdA:self.num b:self.denom];
    self.num /= gcd;
    self.denom /= gcd;
}
//加法
- (Fraction *)addFraction:(Fraction *)frac
{//在一个减号方法中，可以直接使用self作为对象使用
    //self在这里代表调用这个方法的对象
    NSInteger newNum = self.num * frac.denom + self.denom * frac.num;
    NSInteger newDenom = self.denom * frac.denom;
    Fraction *newFrac = [[Fraction alloc] initWithNum:newNum denom:newDenom];
    return newFrac;
}
//减法
- (Fraction *)subFraction:(Fraction *)frac
{
    NSInteger newNum = self.num * frac.denom - self.denom * frac.num;
    NSInteger newDenom = self.denom * frac.denom;
    Fraction *newFrac = [[Fraction alloc]initWithNum:newNum denom:newDenom];
    return newFrac;
}
//乘法
- (Fraction *)mulfraction:(Fraction *)frac{
    NSInteger newNum = self.num * frac.num;
    NSInteger newDenom = self.denom * frac.denom;
    Fraction *newfrac = [[Fraction alloc]initWithNum:newNum denom:newDenom];
    return newfrac;
}
//除法
- (Fraction *)divFraction:(Fraction *)frac{
    NSInteger newNum = self.num * frac.denom;
    NSInteger newDenom = self.denom * frac.num;
    Fraction *newfrac = [[Fraction alloc]initWithNum:newNum denom:newDenom];
    return newfrac;
}
- (void)info
{
    NSLog(@"%ld %ld", self.num, self.denom);
}





































//- (void)sum:(NSInteger)a,(NSInteger)b
//{
//
//
//}
//- (void)sub
//- (void)mul
//- (void)div
//
@end
