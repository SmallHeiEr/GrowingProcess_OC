//
//  Student.h
//  OC222
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
//属性的声明   定制不同的setget方法实现
//属性的声明代表一堆setter／getter方法
//@property 类型 属性名
//@property NSString *name;
//@property NSString *genter;
//@property NSInteger age;
@property (nonatomic, assign)CGFloat number;
@property CGFloat mark;
//属性的特性
//修改setter／getter方法的内部实现
//1.读写特性
//可读可写readwrite(默认）(常用)／只读readonly(）
//@property (readwrite) NSString *name;
@property(nonatomic, copy) NSString *genter;
//2.原子特性
//原子性／非原子性
//atomic（默认）（消耗大量资源）／nonatomic （常用）         线程
//原子性代表对访问的成员变量加锁保护；（互斥锁）（消耗大量资源）
//@property (nonatomic) NSInteger age;
//@property (readwrite, nonatomic) NSString *name;

//3.内存特性
//assign/retain/copy
//assign:用于基本数据类型（NSinteger， CGFloat，结构体。。。）(内存实现就是直接赋值，没有内存保护)
//retain：用于类的类型（给成员赋值过程中加上内存优化）
//copy： 用于实现<NSCopying>协议的类的类型
@property (nonatomic, assign) NSInteger age;

@property (nonatomic, retain) NSString *name;




//@property (nonatomic, assign) NSInteger mark;

+ (instancetype)studentWithName:(NSString *)name genter:(NSString *)genter age:(NSInteger)age number:(CGFloat)number mark:(CGFloat)mark;
- (void)info;
- (instancetype)initWithName:(NSString *)name genter:(NSString *)genter age:(NSInteger)age number:(CGFloat)number mark:(CGFloat)mark;
@end
