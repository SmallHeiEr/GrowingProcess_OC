//
//  main.m
//  MyRunTime
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/objc-runtime.h>
#import "NSArray+my.h"
#import "Student.h"






int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
//        Person *p = [[Person alloc] init];
//        
////       1. 获取person所有属性
//        unsigned int countProperty;
////        获取属性列表
//        objc_property_t *propertyList = class_copyPropertyList([Person class], &countProperty);
//        for (int i = 0; i < countProperty; i++) {
//            //@()把c语言的字符串转化成OC
//            NSString *propertyName = @(property_getName(propertyList[i]));
//            NSLog(@"属性：%@", propertyName);
//            
//            
//            
//            
//            
//        }

        
 
        
        
        
        
        
        
        //
////       2. 获取实例变量
//        unsigned int countIvar;
//        Ivar *ivarList = class_copyIvarList([Person class], &countIvar);
//        for (int i = 0; i < countIvar; i++) {
//            NSString *ivarName = @(ivar_getName(ivarList[i]));
//            NSLog(@"实例变量：%@", ivarName);
//        }
//        
////       3. 获取方法列表
////        .cxx_destruct 析构方法（类似于OC中的dealloc）
//        unsigned int countMethod;
//        Method *methodList = class_copyMethodList([Person class], &countMethod);
//        for (int i = 0; i < countMethod; i++) {
//            Method methodName = methodList[i];
//            NSLog(@"方法：%@", NSStringFromSelector(method_getName(methodName)));
//        }
//        
////        元类
////        stu -> person(类) -> person(元类)
////            isa  ⬇️      isa  ⬇️
////               存—号方法      存＋号方法
//        unsigned int countMethodY;
//        Method *methodListY = class_copyMethodList(object_getClass([Person class]), &countMethodY);
//        for (int i = 0; i < countMethodY; i++) {
//            Method methodNameY = methodListY[i];
//            NSLog(@"元类方法：%@", NSStringFromSelector(method_getName(methodNameY)));
//        
//        }
//        
//        
////        4. 利用runtime实现KVC
//        
        NSDictionary *d = @{@"name":@"sss", @"age":@(12), @"address":@"aaa"};
        Person *p2 = [Person modelWithDic:d];
        NSLog(@"%@", p2.name);
//
////        5. 给一个系统的类添加属性
//        NSArray *arr = [NSArray array];
//        arr.cou = @"sadfadf";
//        NSLog(@"%@", arr.cou);
//        
//       6. 方法的消息转发
//        [Student sayHello];
        
//        7.方法的调剂（替换）为防止数组空是crash
        
//        NSArray *arra = @[@"ss"];
//        NSLog(@"111111%@", [arra objectAtIndex:5]);
        
        
//  8. 利用runtime实现归档和反归档的第三方（作业）
        
//        NSDictionary *d = @{@"name":@"sss", @"age":@(12), @"address":@"aaa"};
        
        NSString *fileStr = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
        NSString *filePath = [fileStr stringByAppendingPathComponent:@"str.txt"];
        //    存储复杂类型数据要进行归档，读取进行反归档；
        //    归档会调用NSCoding协议方法，需要在student类中实现
        [NSKeyedArchiver archiveRootObject:p2 toFile:filePath];
        [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
        
        
        
        
        
        
        
        
        
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
