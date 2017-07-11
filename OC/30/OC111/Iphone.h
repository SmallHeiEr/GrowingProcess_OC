//
//  Iphone.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Iphone : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) NSString * number;
@property (nonatomic, assign) NSString * area;
- (instancetype)initWithName:(NSString *)name number:(NSString *)number area:(NSString *)area;

@end
