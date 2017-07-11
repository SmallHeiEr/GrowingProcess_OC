//
//  Fenshu.h
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger denom;
- (instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom;
//- (NSInteger)gcdA:(NSInteger)a b:(NSInteger)b;
//- (void)reduce;
//分数的加法
- (Fraction *)addFraction:(Fraction *)frac;
//减法
- (Fraction *)subFraction:(Fraction *)frac;
//乘法
- (Fraction *)mulfraction:(Fraction *)frac;
//除法
- (Fraction *)divFraction:(Fraction *)frac;
-(void)info;
@end
