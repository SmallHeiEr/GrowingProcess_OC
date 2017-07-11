//
//  main.m
//  作业0.0
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Colour.h"
#import "Person.h"
int main(int argc, const char * argv[]) {
//     NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/crayons.txt" encoding:NSUTF8StringEncoding error:nil];
//       // NSLog(@"%@", str);
//    NSArray *arr = [str componentsSeparatedByString:@"\n"];
//   
//   // NSLog(@"%@", arr);
//    NSMutableArray *arr2 = [NSMutableArray array];
//    NSMutableArray *arr3 = [NSMutableArray array];
//    for (NSString *str1 in arr) {
//       // NSLog(@"%@", str1);
//        NSArray *arr1 = [str1 componentsSeparatedByString:@" #"];
//        for (NSInteger i = 0; i < arr1.count; i++) {
//                NSString *str2 = arr1[i];
//                if (0 == i % 2) {
//                      [arr2 addObject:str2];
//                }
//                else {
//                    [arr3 addObject:str2];
//                }
//         }
//     }
//    NSMutableDictionary *dicM = [NSMutableDictionary dictionary];
//    for (NSInteger i = 0; i < arr2.count; i++)
//    {
//        [dicM setObject:arr3[i] forKey:arr3[i]];
//    }
//   // NSLog(@"%@", arr2);
////    按26个字母为key
////    创建字典
//    NSMutableDictionary *dicM1 = [NSMutableDictionary dictionary];
////    创建类顺便加入字典
//    for (NSInteger i = 0; i < arr2.count; i++) {
//        Colour *colour =[[Colour alloc] initWithName:arr2[i] colourValue:arr3[i]];
//        [colour addcolo:colour contact:dicM1];
//        //[colour info];
//    }
//    NSLog(@"%@", dicM1);
//    for (NSInteger i = 0; i < arr2.count; i++)
//    {
//    Colour *a = [dicM1 objectForKey:arr2[i]];
//        [a info];
//    }
 //////////////////////////
    /////////////////////
    ////////////////
    //////////////
    ///////////////////////////////
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/crayons.txt" encoding:NSUTF8StringEncoding error:nil];
//    // NSLog(@"%@", str);
//    NSArray *arr = [str componentsSeparatedByString:@"\n"];
//    //创建字典
//        NSMutableDictionary *dicM = [NSMutableDictionary dictionary];
//    for (NSString *str1 in arr) {
//        NSArray *arr0 = [str1 componentsSeparatedByString:@" #"];
//        
//[dicM setObject:arr0[1] forKey:arr0[0]];
//    }
//    
//    
    
   // componentsSeparatedByString
    
    
    
    
    
/****************************************************************************************/
    
//    1、创建1个包含5个字符串元素的数组;
//    2、 for循环倒序输出所有元素;
//    3、 for...in完成所有字符串元素的拼接(生成一个新的字符串),并输出拼接好的字符串。
//    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"59", @"34", @"85", @"26", @"75", nil];
//    for (NSInteger i = 0; i < arr.count - 1; i++) {
//        for (NSInteger j = 0; j < arr.count - 1 - i; j++) {
//            if (-1 == [arr[j] compare:arr[j + 1]]) {
//                [arr exchangeObjectAtIndex:j withObjectAtIndex:j + 1 ];
//            }
//        }
//    }
//    //NSLog(@"%@", arr);
//////    拼接不上＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊
//      NSMutableString *str1 = [NSMutableString string];
//    for (NSString *str in arr) {
//      [str1 appendString:str];
//        NSLog(@"%@", str1);
//    }
////
//   1、创建1个包含5个person对象的数组(姓名 用英文 );
//    2、 for循环找到年龄最 大的Person对象;
//    3、 for...in遍历数组,把 大于某个年龄的Person对象的姓名后 面 拼接上字符串“-brother”。
    
    
//        Person *per1 = [[Person alloc] initWithName:@"Long" age:18];
//        Person *per2 = [[Person alloc] initWithName:@"Ban" age:20];
//        Person *per3= [[Person alloc] initWithName:@"Shou" age:88];
//        Person *per4 = [[Person alloc] initWithName:@"tai" age:66];
//        Person *per5= [[Person alloc] initWithName:@"nian" age:55];
//    NSMutableArray *arr = [NSMutableArray arrayWithObjects:per1, per2, per3, per4, per5, nil];
//    
//    for (NSInteger i = 0; i < arr.count - 1; i++) {
//               for (NSInteger j = 0; j < arr.count - 1 - i; j++) {
//            if ([arr[j] age] > [arr[j + 1] age]) {
//                 Person *per = arr[j];
//                arr[j] = arr[j + 1];
//                arr[j + 1] = per;
//            }
//        }
//    }
//    NSLog(@"%ld", [arr.lastObject age]);
// ***********************************************************************************
//    Person *per = [[Person alloc]init];
//    for (NSInteger i = 0; i < arr.count; i++) {
//    
//               per = [per age] > [arr[i] age]? per : arr[i];
//
//    }
//      NSLog(@"%ld", [per age]);
//    能不能建一个空的person，把已有的person直接赋值给他
    //Person *p = [Person alloc];
   
   //                if ([arr[i] age] > [arr[i + 1] age]) {
//                    Person *per = arr[i];
//                }else{
//                    Person *per = arr[i + 1];
//                }
//
// **********************************************************************************
    
//    1、使 用第 2题目 中生 成的数组;
//    2、使 用sortUsingSelector: 分别按年龄,姓名,性别进行  排序,输出排序结果;
//    3、使用 NSSortDescriptor,按姓名进行 排序。
//    Person *per1 = [[Person alloc] initWithName:@"Long" age:18];
//    Person *per2 = [[Person alloc] initWithName:@"Ban" age:20];
//    Person *per3= [[Person alloc] initWithName:@"Shou" age:88];
//    Person *per4 = [[Person alloc] initWithName:@"tai" age:66];
//    Person *per5= [[Person alloc] initWithName:@"nian" age:55];
//    NSMutableArray *arr = [NSMutableArray arrayWithObjects:per1, per2, per3, per4, per5, nil];
//    
//    NSSortDescriptor *sortD = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
//    [arr sortUsingDescriptors:[NSArray arrayWithObjects:sortD, nil]];
//    
//    for (Person *per in arr) {
//        NSLog(@"%@%ld", per.name, per.age);
//    }
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/dllo/Downloads/crayons.txt" encoding:NSUTF8StringEncoding error:nil];
    NSArray *arr = [str componentsSeparatedByString:@"\n"];
    NSMutableArray *proArr = [NSMutableArray array];
    for (NSString *temp in arr) {
        if (![temp hasPrefix:@" "]) {
            NSMutableArray *city = [NSMutableArray array];
            NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"provinceName", city, @"city", nil];
            [proArr addObject:proDic];
        }else if (![temp hasPrefix:@"    "]){
            NSMutableArray *area = [NSMutableArray array];
            NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:temp, @"city", area, @"area", nil];
            [[proArr.lastObject objectForKey:@"city"] addObject:cityDic];
            }else {
        [[[[proArr.lastObject objectForKey:@"city"] lastObject] objectForKey:@"area"] addObject:temp];}}
    NSLog(@"%@", proArr);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    return 0;
}
