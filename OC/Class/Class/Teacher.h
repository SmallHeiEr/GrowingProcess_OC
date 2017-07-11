//
//  Teacher.h
//  Class
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Person.h"

@interface Teacher : Person

@property (nonatomic, copy) NSString *className;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age className:(NSString *)className;
- (void)exam;
- (void)score;

@end
