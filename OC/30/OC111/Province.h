//
//  Province.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Province : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) CGFloat area;
@property (nonatomic, assign) NSString * place;
- (instancetype)initWithName:(NSString *)name area:(CGFloat)area place:(NSString *)place;
@end
