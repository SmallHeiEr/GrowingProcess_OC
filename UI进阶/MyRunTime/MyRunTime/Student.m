//
//  Student.m
//  MyRunTime
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "Student.h"
#import <objc/objc-runtime.h>

@implementation Student

void sayGoodBye(id d, SEL _cmdd) {
    printf("你好，世界， %s, %s", d, _cmdd);
}
//如果方法没有实现，⬇️
+ (BOOL)resolveClassMethod:(SEL)sel
{
    if ([NSStringFromSelector(sel) isEqualToString:@"sayHello"]) {
//        第一个参数设置你要添加的方法的类还是元类
//        第二个参数设置的原方法
//        第三个参数 重新设定的方法的实现
//        第四个参数 设置参数个数（"v@"：无参， "v@:"：有参）
        class_addMethod(object_getClass([self class]), sel, (IMP)sayGoodBye, "v@");
    }
    return YES;
}

@end
