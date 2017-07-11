//
//  Dog.h
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    NSString *_name;
    NSInteger _age;
    CGFloat _price;
}
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setAge:(NSInteger)age;
- (NSInteger)age;
- (void)setPrice:(CGFloat)price;
- (CGFloat)price;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age price:(CGFloat)price;
- (void)info;
@end
