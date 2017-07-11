//
//  Province.m
//  OC111
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import "Province.h"

@implementation Province
- (instancetype)initWithName:(NSString *)name area:(CGFloat)area place:(NSString *)place
{
    self = [super init];
    if (self) {
        self.name = name;
        self.area = area;
        self.place = place;
    }
    return self;
}
@end
