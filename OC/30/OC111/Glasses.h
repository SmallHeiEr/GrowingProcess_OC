//
//  Glasses.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Glasses : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSString * school;
- (instancetype)initWithName:(NSString *)name num:(CGFloat)num school:(NSString *)school;
@end
