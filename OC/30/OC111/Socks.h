//
//  Socks.h
//  OC111
//
//  Created by dllo on 16/1/3.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Socks : NSObject
@property (nonatomic, assign) NSString * size;
@property (nonatomic, assign) CGFloat price;
@property (nonatomic, assign) NSString * colour;
- (instancetype)initWithSize:(NSString *)size price:(CGFloat)price colour:(NSString *)colour;
@end
