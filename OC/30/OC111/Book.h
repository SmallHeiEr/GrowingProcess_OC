//
//  Book.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) NSString * colour;
@property (nonatomic, assign) CGFloat price;
- (instancetype)initWithName:(NSString *)name colour:(NSString *)colour price:(CGFloat)price;

@end
