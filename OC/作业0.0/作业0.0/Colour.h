//
//  Colour.h
//  作业0.0
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Colour : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *colourValue;
- (instancetype)initWithName:(NSString *)name colourValue:(NSString *)colourValue;
- (void)addcolo:(Colour *)per contact:(NSMutableDictionary *)contact;
- (void)info;

@end
