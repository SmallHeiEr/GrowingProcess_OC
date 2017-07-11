//
//  Student.m
//  练习
//
//  Created by dllo on 16/1/22.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)dealloc
{
    [_name release];
    [_gender release];
    [_phoneNumber release];
    [_age release];
    [_hobby release];
    [_picture release];
    [super dealloc];

}
- (void)setValue:(id)value forKey:(NSString *)key
{
    [super setValue:value forKey:key];
    if ([key isEqualToString:@"picture"]) {
        self.picture = [UIImage imageNamed:value];
    }
}
@end
