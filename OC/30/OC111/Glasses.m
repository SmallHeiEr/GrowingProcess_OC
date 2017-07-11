//
//  Glasses.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Glasses.h"

@implementation Glasses
- (instancetype)initWithName:(NSString *)name num:(CGFloat)num school:(NSString *)school
{
    self = [super init];
    if (self) {
        self.name = name;
        self.num = num;
        self.school = school;
    }
    return self;
}
@end
