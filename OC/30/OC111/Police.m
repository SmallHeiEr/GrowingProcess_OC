//
//  Police.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Police.h"

@implementation Police
- (instancetype)initWithName:(NSString *)name age:(CGFloat)age sex:(NSString *)sex
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.sex = sex;
    }
    return self;
}
@end
