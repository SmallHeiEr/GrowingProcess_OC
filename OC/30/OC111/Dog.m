//
//  Dog.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}
- (void)setAge:(NSInteger)age
{
    _age = age;
}
- (NSInteger)age
{
    return _age;
    
}
- (void)setPrice:(CGFloat)price
{
    _price = price;
}
- (CGFloat)price
{
    return _price;
}
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age price:(CGFloat)price

{
    self = [super init];
    if (self) {
        [self setName:name];
        [self setAge:age];
        [self setPrice:price];
    }return self;
}

-(void)info
{
    NSLog(@"%@%ld%lf", self.name, self.age, self.price);
}






@end
