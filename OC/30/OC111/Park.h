//
//  Park.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Park : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) NSString * address;
@property (nonatomic, assign) CGFloat price;
- (instancetype)initWithName:(NSString *)name address:(NSString *)address price:(CGFloat)price;

@end
