//
//  Student.m
//  内存
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize age = _age;
@synthesize name = _name;
@synthesize sex = _sex;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.sex = sex;
    }
    return self;
}
+ (instancetype)studentWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex
{
    Student *p =[[Student alloc] initWithName:name age:age sex:sex];
    return [p autorelease];
}
- (void)setName:(NSString *)name
{
    if (_name != name) {
        [_name release];
        _name = [name retain];
    }
}
- (NSString *)name
{
    return [[_name retain] autorelease];
}
- (void)setAge:(NSInteger)age
{
    _age = age;
}
- (NSInteger)age
{
    return _age;
}
- (void)setSex:(NSString *)sex
{
    if (_sex != sex) {
        [_sex release];
        _sex = [sex copy];
    }
}
- (NSString *)sex
{
    return [[_sex retain] autorelease];
}
- (void)dealloc
{
    [_name release];
    [_sex release];
    [super dealloc];
}
- (void)setValue:(id)value forKey:(NSString *)key
{
    [super setValue:value forKey:key];
    if ([key isEqualToString:@"age"]){
        self.age = [value integerValue];
    }
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}







@end
