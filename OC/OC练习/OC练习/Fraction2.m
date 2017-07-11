//
//  Fraction2.m
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Fraction2.h"

@implementation Fraction2
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom{
    self = [super init];
    if (self) {
        self.num = num;
        self.denom = denom;
        [self yuefen];
    }
    return self;
}
-(NSInteger)GcdA:(NSInteger)a b:(NSInteger)b{
    while (b != 0) {
        NSInteger temp = b;
        b = a % b;
        a = temp;
    }
return a;
}
-(void)yuefen{
NSInteger gcd = [self GcdA:self.num b:self.denom];
    self.num /= gcd;
    self.denom /= gcd;
}
-(Fraction2 *)addfraction:(Fraction2 *)frac2
{
    NSInteger newNum = self.num * frac2.denom + frac2.num * self.denom;
    NSInteger newDenom = self.denom * frac2.denom;
    Fraction2 *newFrac2 = [[Fraction2 alloc]initWithNum:newNum denom:newDenom];

    return newFrac2;


}
@end
