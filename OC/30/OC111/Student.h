//
//  Student.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) CGFloat age;
@property (nonatomic, assign) NSString * sex;
- (instancetype)initWithName:(NSString *)name age:(CGFloat)age sex:(NSString *)sex;
@end
