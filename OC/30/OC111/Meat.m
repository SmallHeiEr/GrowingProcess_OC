//
//  Meat.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Meat.h"

@implementation Meat
- (instancetype)initWithName:(NSString *)name price:(CGFloat)price teste:(NSString *)teste
{
    self = [super init];
    if (self) {
        self.name = name;
        self.price = price;
        self.teste = teste;
    }
    return self;
}
@end
