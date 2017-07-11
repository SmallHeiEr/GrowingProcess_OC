//
//  Fraction6.h
//  OC练习
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction6 : NSObject
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger denom;
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom;
-(NSInteger)gcdA:(NSInteger)a b:(NSInteger)b;
-(void)reduce;
-(Fraction6 *)addfraction:(Fraction6 *)frac6;
-(void)info;

@end
