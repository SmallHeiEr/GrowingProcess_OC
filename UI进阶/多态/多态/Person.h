//
//  Person.h
//  多态
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)say;
- (void)say:(NSString *)a;
//方法的多态
//- (void)say:(NSString *)a b:(NSString *)b;
//- (void)say:(NSString *)a b:(NSInteger)t;
@end
