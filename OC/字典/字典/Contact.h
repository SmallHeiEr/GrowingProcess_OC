//
//  Contact.h
//  字典
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, assign) NSInteger phone;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *group;
@property (nonatomic, assign) NSInteger age;
- (instancetype)initWithName:(NSString *)name sex:(NSString *)sex phone:(NSInteger)phone address:(NSString *)address group:(NSString *)group age:(NSInteger)age;
- (void)info;


@end
