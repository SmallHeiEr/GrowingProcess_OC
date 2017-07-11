//
//  Fraction6.m
//  OC练习
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Fraction6.h"

@implementation Fraction6
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom
{
    self = [super init];
    if (self) {
        self.num = num;
        self.denom = denom;
        [self reduce];
        
    }return self;
}
-(NSInteger)gcdA:(NSInteger)a b:(NSInteger)b
{
    while (b != 0) {
        NSInteger temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}
-(void)reduce
{
    NSInteger gcd = [self gcdA:self.num b:self.denom];
    self.num /= gcd;
    self.denom /= gcd;
}
-(Fraction6 *)addfraction:(Fraction6 *)frac6
{
    NSInteger newNum = self.num * frac6.denom + self.denom * frac6.num;
    NSInteger newDenom = self.denom * frac6.denom;
    Fraction6 *newFrac6 = [[Fraction6 alloc]initWithNum:newNum denom:newDenom];
    return newFrac6;
}
-(void)info
{
    NSLog(@"%ld %ld", self.num, self.denom);
}
@end
