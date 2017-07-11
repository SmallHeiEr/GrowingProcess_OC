//
//  Fruit.h
//  OC111
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject
{
    NSString *_name;
    NSString *_colour;
    CGFloat _price;
}
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setColour:(NSString *)colour;
- (NSString *)colour;
- (void)setPrice:(CGFloat)price;
- (CGFloat)price;
- (instancetype)initWithName:(NSString *)name colour:(NSString *)colour price:(CGFloat)price;
- (void)info;


@end
