//
//  Fraction4.h
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction4 : NSObject
@property (nonatomic, assign)NSInteger num;
@property (nonatomic, assign)NSInteger denom;
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom;
-(NSInteger)gcdA:(NSInteger)a b:(NSInteger)b;
-(void)yuefen;
-(Fraction4 *)addfraction:(Fraction4 *)frac4;

@end
