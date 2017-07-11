//
//  Orange.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Orange : NSObject
@property (nonatomic, assign) NSString * colour;
@property (nonatomic, assign) CGFloat weight;
@property (nonatomic, assign) CGFloat price;
- (instancetype)initWithColour:(NSString *)colour weight:(CGFloat)weight price:(CGFloat)price;
@end
