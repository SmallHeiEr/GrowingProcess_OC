//
//  Student.h
//  内存
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, copy) NSString *sex;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex;
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setAge:(NSInteger)age;
- (NSInteger)age;
- (void)setSex:(NSString *)sex;
- (NSString *)sex;
- (void)dealloc;
+ (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex;
@end
