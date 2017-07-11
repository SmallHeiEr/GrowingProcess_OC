//
//  Person.m
//  MyRunTime
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "Person.h"
#import <objc/objc-runtime.h>
@interface Person ()

@property (nonatomic, strong) NSString *address;
+ (void)getcolor;
@end
@implementation Person
- (void)setVideoForKey:(NSDictionary *)dic
{
    ////       1. 获取person所有属性
    unsigned int countProperty;
    //        获取属性列表
    objc_property_t *propertyList = class_copyPropertyList([self class], &countProperty);
    for (int i = 0; i < countProperty; i++) {
        //@()把c语言的字符串转化成OC
        NSString *propertyName = @(property_getName(propertyList[i]));
        NSLog(@"属性：%@", propertyName);
        
        
        
        
        
    }
}
+ (Person *)modelWithDic:(NSDictionary *)dic
{
//    获取属性列表
    unsigned int countProperty;
//    在—方法里self 代表本类的对象
//    在＋方法里self 代表本类
    objc_property_t *propertyList = class_copyPropertyList([self class], &countProperty);
//    NSMutableArray *arr = [NSMutableArray new];
     id my = [[self alloc] init];
    for (int i = 0; i < countProperty; i++) {
        NSString *propertyName = @(property_getName( propertyList[i]));
//        利用获取到的属性名，找到对应的value值
        id value = dic[propertyName];
       
        if (value) {
            
          [my setValue:value forKey:propertyName];
        }
       
    }
    return my;
    
}


+ (void)getcolor
{
    
}
- (void)getname
{
    
}
@end
