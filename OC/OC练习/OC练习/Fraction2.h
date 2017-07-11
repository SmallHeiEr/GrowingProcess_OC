//
//  Fraction2.h
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction2 : NSObject
@property (nonatomic, assign)NSInteger num;
@property (nonatomic, assign)NSInteger denom;
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom;
-(NSInteger)GcdA:(NSInteger)a b:(NSInteger)b;
-(void)yuefen;
-(Fraction2 *)addfraction:(Fraction2 *)frac2;
@end
