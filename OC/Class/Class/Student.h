//
//  Student.h
//  Class
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property (nonatomic, assign) NSInteger number;
@property (nonatomic, copy) NSMutableDictionary *course;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age number:(NSString *)number course:(NSMutableDictionary *)course;
- (void)compareage:(NSInteger)age;

@end
