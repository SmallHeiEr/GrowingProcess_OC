//
//  main.m
//  排序
//
//  Created by dllo on 16/1/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
   
//    集合－－－集合中的元素具有唯一性
////    常用于判断交集和并集
//    
//    
////    不可变集合
////    创建集合
////    若有重复元素，只保留一个
//    NSSet *set = [NSSet setWithObjects:@"1", @"2", @"3", @"4", nil];
////    集合中的元素个数set.count;
//    NSLog(@"%ld", set.count);
////    获取“某个”元素
////    获取元素由系统指定
//    NSLog(@"%@", [set anyObject]);
////    是否包含
////    返回值为boll类型
//    NSLog(@"%d", [set containsObject:@"5"]);
//    
//    
//    
////    可变集合
//    NSMutableSet *setM1 = [NSMutableSet setWithObjects:@"1", @"2", @"3", @"4", nil];
//    NSMutableSet *setM2 = [NSMutableSet setWithObjects:@"5", @"6", @"8", @"3", nil];
//    
////    合并
////    相同元素保留一个
//    [setM1 unionSet:setM2];
////    交集
////    取相同元素
//    [setM1 intersectSet:setM2];
//    
////    添加元素
//    [setM1 addObject:@"9"];
//    
//    
////    删除元素
//    [setM1 removeObject:@"1"];
//    
////    元素具有唯一性，但是可以判断重复元素的个数
//    NSCountedSet *setC = [[NSCountedSet alloc] initWithObjects:@"1", @"2", @"3", @"2", nil];
//    NSLog(@"%ld", setC.count);
//    NSLog(@"%ld", [setC countForObject:@"2"]);
////    集合的快速枚举
//    for (NSString *str in set) {
//        NSLog(@"%@", str);
//    }
//    遍历数组－－得到数组中的元素
//    遍历集合－－得到集合中的元素
//    遍历字典－－得到字典中的元素
//    注意， forin中不可以改变（删除／添加等）被遍历的collection（数组集合字典）；
    
//    集合里面只装数字？下标
    
 //************************简单类型对象的排序******************************//
//    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"8", @"2", @"9", @"3", nil];
//    for (NSInteger i = 0; i < arr.count - 1; i++) {
//        for (NSInteger j = 0; j < arr.count - 1 - i; j++) {
//            if (NSOrderedDescending == [arr[j] compare: arr[j + 1]]) {
//               
//                [arr exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
//    }
//            NSLog(@"%@", arr);}}
//    
////    oc排序方法
////            @selector---方法选择器， 填写要用来比较的方法
//     [arr sortUsingSelector:@selector(compare:)];
////   新不可变数组 ＝ [不可变数组 sortedArrayUsingSelector:@selector(compare:)];
//    
//    
//            NSLog(@"%@", arr);
 /*********************************************************************/
    
    
    
//************************自定义类型对象的排序******************************//
//    Person *per1 = [[Person alloc] initWithName:@"Long" age:18];
//    Person *per2 = [[Person alloc] initWithName:@"Ban" age:20];
//    Person *per3= [[Person alloc] initWithName:@"Shou" age:88];
//    
//    NSMutableArray *arr1 =[NSMutableArray arrayWithObjects:per1, per2, per3, nil];
//    
    [arr1 sortUsingSelector:@selector(compareWithAge:)];
//
//    
//    for (Person *per in arr1) {
//        NSLog(@"%@ %ld", per.name, per.age);
//    }
//    Student *stu1 = [[Student alloc] initWithName:@"longlong" number:15 mark:55];
//    Student *stu2 = [[Student alloc] initWithName:@"banban" number:17 mark:66];
//    Student *stu3 = [[Student alloc] initWithName:@"guigui" number:16 mark:77];
//    
//    NSMutableArray *arr0 = [NSMutableArray arrayWithObjects:stu1, stu2, stu3, nil];
//    
//    [arr0 sortUsingSelector:@selector(comWithName:)];
////    [arr0 sortUsingSelector:@selector(comWithNumber:)];
////    [arr0 sortUsingSelector:@selector(comWithMark:)];
//
//    for (Student *stu0 in arr0) {
//        NSLog(@"%@ %ld %.2lf", stu0.name, stu0.number, stu0.mark);
//    }
//   /****************************简单类型排序*****************************/
//NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"8", @"2", @"9", @"3", nil];
//////    创建排序对象
//////    参数1 －－若为简单类型对象克天蝎nil／@“self”；
//////    若为复杂类型对象克天蝎要进行排序的关键字，如
//////    按照person的name成员排序，可填写@“name”
//////    参数2-－升序 降序
//    NSSortDescriptor *sortD = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
//////    排序方法
//////    注意参数系要填写数组类型对象，数组中需要放置描述的对象
////    
//    [arr sortUsingDescriptors:[NSArray arrayWithObject:sortD]];
//    NSLog(@"%@", arr);
// //   /****************************复杂类型排序*****************************/
        Person *per1 = [[Person alloc] initWithName:@"Long" age:18];
        Person *per2 = [[Person alloc] initWithName:@"Ban" age:20];
        Person *per3= [[Person alloc] initWithName:@"Shou" age:88];
//
        NSMutableArray *arr1 =[NSMutableArray arrayWithObjects:per1, per2, per3, nil];
 NSSortDescriptor *sortD1 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    
    [arr1 sortUsingDescriptors:[NSArray arrayWithObject:sortD1]];
    //*****************
    for (Person *a in arr1) {
        NSLog(@"%@ %ld", a.name, a.age);
    }
    Student *stu1 = [[Student alloc] initWithName:@"longlong" number:15 mark:55];
        Student *stu2 = [[Student alloc] initWithName:@"banban" number:17 mark:66];
        Student *stu3 = [[Student alloc] initWithName:@"guigui" number:16 mark:77];
    
        NSMutableArray *arr0 = [NSMutableArray arrayWithObjects:stu1, stu2, stu3, nil];
    NSSortDescriptor *sortD2 = [NSSortDescriptor sortDescriptorWithKey:@"number" ascending:YES];
    [arr0 sortUsingDescriptors:[NSArray arrayWithObject:sortD2]];
    
////scorescorescorescorsscoresoescorescorscscorsscorescorescorsescorescorescoresocrsscorsscorescorescorsescore
//    
    for (Student *stu0 in arr0) {
                NSLog(@"%@ %ld %.2lf", stu0.name, stu0.number, stu0.mark);
            }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
