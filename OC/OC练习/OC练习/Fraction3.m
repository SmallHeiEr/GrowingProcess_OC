//
//  Fraction3.m
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Fraction3.h"

@implementation Fraction3
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
-(Fraction3 *)addfraction:(Fraction3 *)frac3{
    NSInteger newNum = self.num * frac3.denom + self.denom * frac3.num;
    NSInteger newDenom = self.denom * frac3.denom;
    Fraction3 *newfrac3 = [[Fraction3 alloc]initWithNum:newNum denom:newDenom];


    return newfrac3;
}
@end
