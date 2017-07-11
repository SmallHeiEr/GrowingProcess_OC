//
//  OC111.m
//  OC111
//
//  Created by dllo on 15/12/29.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Flower.h"

@implementation Flower
+ (instancetype)flowerWithName:(NSString *)name
money:(CGFloat)money colour:(NSStr0

}



- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return  _name;
}
- (void)setMoney:(CGFloat)money
{
    _money = money;
}
- (CGFloat)money
{
    return _money;
}
- (void)setColour:(NSString *)colour
{
    _colour = colour;
}
- (NSString *)colour
{
    return _colour;
}
- (void)info
{
    NSLog(@"%@ %lf %@", _name, _money, _colour);
}
-(instancetype)initWithName:(NSString *)name money:(CGFloat)money colour:(NSString *)colour
{
    self = [super init];
    if (self) {
        [self setName:name];
        [self setMoney:money];
        [self setColour:colour];
    }
    return self;
}
@end
