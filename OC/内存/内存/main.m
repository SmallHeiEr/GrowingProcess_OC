//
//  main.m
//  内存
//
//  Created by dllo on 16/1/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
//       //alloc retain copy 引用计数加一
//////release autorelease 引用计数减一
////    NSArray *arr = [[NSArray alloc] initWithObjects:@"a", nil];
////    
//////    引用计数减一
////    [arr release];
////    
////    NSArray *arr1 = [NSArray arrayWithObjects:@"b", nil];
//////    不用release，不见兔子不撒鹰
//////    便利构造器里面已经release
//////    手动加一
////    [arr1 retain];
////    //在未来的某个时间释放
////    [arr1 autorelease];
////当对象被添加进collection类型中时，对象引用计数加一
////        被移除Collection类型时，计数减一
////          当collention被销毁时，所有成员计数减一
//    
//    
//    
//// KVC 间接访问的一种方式
//         Student *stu = [[Student alloc] init];
//         [stu setValue:@"long" forKey:@"name"];
//         NSLog(@"%@", [stu valueForKey:@"name"]);
//    
//         NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"long", @"name", @"nan?", @"sex", nil];
////    重要方法   将字典中的内容按照key值，对应的写入对象中
//         [stu setValuesForKeysWithDictionary:dic];
//         NSLog(@"%@,%@",stu.name, stu.sex);
//    
    
//    整型转换成字符串
//    int a = 3;
//    NSString *str = [NSString stringWithFormat:@"%d", a];
//    NSLog(@"%@", str);
//    
//    
////    字符串转换成整型
//    int ret = [str intValue];
//    NSLog(@"%d", ret);
//    

//    block
//    定义一个block， 无返回值，无参数
//    void (^block1)(void) =  ^(void) {
//        NSLog(@"tiantian");
//    };
//    
//    
////    调用
//    block1();
//    
//    
////  有参有返回值
//    NSInteger (^block2)(NSInteger a, NSInteger b) = ^(NSInteger a, NSInteger b){
//        return a + b;
//    };
//   
//    NSLog(@"%ld", block2(3, 5));
//    
//    //block对类型匹配要求严苛
//    BOOL (^block3)(void) = ^(void){
//        return YES;//不能写1或0，只能写yes和no；
//    };
    
//    BOOL (^block4)(NSString *, NSString *) = ^(NSString *a, NSString *b)
//    {
//        if ([a isEqualToString:b]) {
//            return YES;
//        }
//        return NO;
//    };
//    
    NSInteger (^block5)(NSArray *, NSString *) = ^(NSArray *c, NSString *d)
    {
        if ([c containsObject:d]) {
            return (NSInteger)[c indexOfObject:d];
        }
        return (NSInteger)-1;
    };
//            NSArray *arr = [NSArray arrayWithObjects:@"aaa", @"bbb", @"ccc", nil];
//    
//            NSInteger (^block1)(NSArray *, NSString *) = ^(NSArray *arr, NSString *str) {
//                if ([arr containsObject:str] == YES) {
//                    return (NSInteger)[arr indexOfObject:str];
//                } else {
//                    return (NSInteger)-1;
//                }
//            };
//    
//            NSLog(@"%ld", block1(arr, @"ccc"));
//    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
