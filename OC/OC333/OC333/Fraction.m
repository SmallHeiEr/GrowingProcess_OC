//
//  Fraction.m
//  OC333
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
- (instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom
{
    self = [super init];
    if (self) {
        self.num = num;
        self.denom = denom;
        [self reduce];
        
        
    }return self;
}
- (NSInteger)gcdA:(NSInteger)a b:(NSInteger)b
{
    while (b != 0) {
        NSInteger temp = b;
        b = a % b;
        a = temp;
    }return a;
}
- (void)reduce
{
    NSInteger gcd = [self gcdA:self.num b:self.denom];
    self.num /= gcd;
    self.denom /= gcd;
}
    
-(Fraction *)addfraction:(Fraction *)frac2
{
    NSInteger newNum = self.num * frac2.denom +
    self.denom * frac2.num;
    NSInteger newDenom = self.denom * self.denom;
    Fraction *newFrac = [[Fraction alloc]initWithNum:newNum denom:newDenom];
    return newFrac;
}
-(void)info
{
    NSLog(@"%ld %ld", self.num, self.denom);
}
@end
