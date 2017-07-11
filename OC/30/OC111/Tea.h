//
//  Tea.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tea : NSObject
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) CGFloat price;
@property (nonatomic, assign) NSString * use;
- (instancetype)initWithName:(NSString *)name price:(CGFloat)price use:(NSString *)use;
@end
