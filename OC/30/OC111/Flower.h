//
//  OC111.h
//  OC111
//
//  Created by dllo on 15/12/29.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Flower : NSObject
{ NSString *_name;
    CGFloat _money;
    NSString *_colour;
}
+ (instancetype)flowerWithName:(NSString *)name
money:(CGFloat)money colour:(NSString *)colour;



- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setMoney:(CGFloat)money;
- (CGFloat)money;
- (void)setColour:(NSString *)colour;
- (NSString *)colour;
- (void)info;
-(instancetype)initWithName:(NSString *)name money:(CGFloat)money colour:(NSString *)colour;
@end
