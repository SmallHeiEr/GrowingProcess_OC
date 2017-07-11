//
//  Person.h
//  排序
//
//  Created by dllo on 16/1/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;
- (NSComparisonResult)compareWithName:(Person *)per;
- (NSComparisonResult)compareWithAge:(Person *)per;
@end
