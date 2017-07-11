//
//  NSString+Test.m
//  类的扩展
//
//  Created by dllo on 16/1/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "NSString+Test.h"

@implementation NSString (Test)
- (void)sayHi
{
    NSLog(@"long");
}
- (NSString *)getFirstStr
{
    //return [[self substringToIndex:1] uppercaseString];
    return [[self capitalizedString] substringToIndex:1];
  
}
- (void)setName:(NSString *)name
{
    if (_name != name) {
        [_name release];
        _name = [name copy];
        
    }
}
//- (NSString *)daxie
//{
//    return [self capitalizedString];
//}

@end
