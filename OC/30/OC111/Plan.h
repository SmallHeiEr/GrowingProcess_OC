//
//  Plan.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Plan : NSObject//设计图
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) CGFloat price;
@property (nonatomic, assign) NSString * size;
- (instancetype)initWithName:(NSString *)name price:(CGFloat)price size:(NSString *)size;
@end
