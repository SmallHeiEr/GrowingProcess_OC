//
//  Fraction1.m
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Fraction1.h"

@implementation Fraction1

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
}
    return a;
}
-(void)reduce
{
    NSInteger gcd = [self gcdA:self.num b:self.denom];
    self.num /= gcd;
    self.denom /= gcd;
}
-(Fraction1 *)addfraction:(Fraction1 *)frac2
{
    NSInteger newNum = self.num * frac2.denom + self.denom * frac2.num;
    NSInteger newDenom = self.denom * frac2.num;
    Fraction1 * newFrac2 = [[Fraction1 alloc]initWithNum:newNum denom:newDenom];
    return newFrac2;
}






@end
