//
//  NSArray+my.m
//  MyRunTime
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "NSArray+my.h"
#import <objc/objc-runtime.h>

const char couKey;
@implementation NSArray (my)
//方法的交换



//这个方法在编译的时候执行 （进度条走的时候正在执行）
//需要在这个方法里进行系统方法的替换
+ (void)load
{
    // 数组比较特殊 类型是__NSArray0 (数组为空的时候) __NSArrayI(数组是不可变的) __NSArrayM(数组是可变的时候)
    Class cla0 = [objc_getClass("__NSArray0") class];
    Class claI = [objc_getClass("__NSArrayI") class];
    Class claM = [objc_getClass("__NSArrayM") class];
    NSArray *ar = @[cla0, claI, claM];
    for (Class cla in ar) {
        Method oldMethod = class_getInstanceMethod(cla, @selector(objectAtIndex:));
        Method newMethod = class_getInstanceMethod(cla, @selector(my_objectAtIndex:));
        method_exchangeImplementations(oldMethod, newMethod);
    }
    
}

- (id)my_objectAtIndex:(NSInteger)index
{
    if (self.count == 0) {
        NSLog(@"不许从空数组里面去数据");
        return nil;
    }
    if (self.count <= index) {
        NSLog(@"你过界了");
        return nil;
    }
//    因为交换了，所以my_objectAtIndex是系统的实现，不会递归
    return [self my_objectAtIndex:index];
    
}


- (void)setCou:(NSString *)cou
{
//    第一个参数：你想要给那个对象添加（当然是self）
//    第二个参数：一个地址（名字任意） 作用是在get方法里面寻找到给地址存的值（每一对set get方法用一个key）
//    第三个参数：是要set方法里面存入到这个地址的量
//    第四个参数：设置他的内存管理（retain copy nonatomic）
    objc_setAssociatedObject(self, &couKey, cou, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)cou
{
   return objc_getAssociatedObject(self, &couKey);
}
@end
