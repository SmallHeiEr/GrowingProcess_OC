//
//  Cup.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cup : NSObject
@property (nonatomic, assign) CGFloat price;
@property (nonatomic, assign) NSString * colour;
@property (nonatomic, assign) NSString * size;
- (instancetype)initWithPrice:(CGFloat)price colour:(NSString *)colour size:(NSString *)size;

@end
