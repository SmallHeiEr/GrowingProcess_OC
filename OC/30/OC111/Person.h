//
//  Person.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) NSString * gender;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age gender:(NSString *)gender;

@end
