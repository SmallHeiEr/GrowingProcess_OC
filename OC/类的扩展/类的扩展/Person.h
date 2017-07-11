//
//  Person.h
//  类的扩展
//
//  Created by dllo on 16/1/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;
- (instancetype)initWithName:(NSString *)name sex:(NSString *)sex;
- (void)info;
- (NSInteger)compareNum1:(NSInteger)num1 num2: (NSInteger)num2 num3:(NSInteger)num3;
@end
