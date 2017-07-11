//
//  Fraction1.h
//  OC练习
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction1 : NSObject
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger denom;
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom;
-(Fraction1 *)addfraction:(Fraction1 *)frac2;
-(Fraction1 *)subfraction:(Fraction1 *)frac2;
-(Fraction1 *)mulfraction:(Fraction1 *)frac2;
-(Fraction1 *)divfraction:(Fraction1 *)frac2;




@end
