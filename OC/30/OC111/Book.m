//
//  Book.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithName:(NSString *)name colour:(NSString *)colour price:(CGFloat)price{
    self = [super init];
    if (self) {
        self.name = name;
        self.colour = colour;
        self.price = price;
    }
    return self;
}
@end
