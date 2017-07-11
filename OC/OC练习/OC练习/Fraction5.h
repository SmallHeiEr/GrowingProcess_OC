//
//  Fraction5.h
//  OC练习
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction5 : NSObject
@property (nonatomic, assign)NSInteger num;
@property (nonatomic, assign)NSInteger denom;
-(instancetype)initWithNum:(NSInteger)num denom:(NSInteger)denom;
-(NSInteger)gcdA:(NSInteger)a b:(NSInteger)b;
-(void)reduce;
-(Fraction5 *)addfraction:(Fraction5 *)frac5;
-(void)info;





@end
