//
//  main.m
//  OC33
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //字符串
    //字面量创建字符串（语法糖）
    NSString *str = @"这是一个字符串";
    
    NSString *str1 = [[NSString alloc]initWithFormat:@"我叫%@,今年%d岁", str, 22];
    NSInteger page = 11;
NSString *douyuStr = [NSString stringWithFormat:@"http://www.douyu.com/page=%ld", page];
   //[ NSString stringWithString:(nonnull NSString *)]
    //字符串长度
    NSLog(@"字符串长度：%lu", douyuStr.length);
    
    //获取子字符串（substring）
    
    //subStringFromIndex:(从。。。开始截取字符串)
//    NSString *sub1 = [douyuStr subStringFromIndex:2];
//    NSLog(@"子字符串：%@", sub1);
    //subStringToIndex:(到。。。为止，截取字符串)
    NSString *sub2 = [douyuStr substringToIndex:10];
    
    NSLog(@"子字符串：%@", sub2);
    
//    定义一个结构体
    NSRange range = {1, 2};
   // substringWithRange:从，，，到，，，截取
    NSString *sub3 = [douyuStr substringWithRange:range];
    NSLog(@"子字符串3: %@", sub3);
    
//    append拼接stringByAppendingString
    NSString *stt = [sub2 stringByAppendingString:sub3];
    NSLog(@"字符串拼接字符串：%@", stt);
    //stringByAppendingFormat
    NSString *stt1 = [sub2 stringByAppendingFormat:@"%@随便加%ld", str1, page];
    NSLog(@"字符串拼接随便：%@", stt1);
//    equal相等- (BOOL)isEqualToString:(NSString *)aString
    BOOL a = [sub2 isEqualToString:sub3];
    
    NSLog(@"%d", a);
    
    
//replac替换
    
    NSString *sss = [douyuStr stringByReplacingOccurrencesOfString:@"w" withString:@"安大妈"];
    NSLog(@"%@", sss);
    NSRange ran1 = {7, 2};
    NSString *sts = [ douyuStr stringByReplacingOccurrencesOfString:@"w" withString:@"安大妈" options:0 range:ran1];
    NSLog(@"%@", sts);
    
    
//    改变大小写case
//    判断前缀后缀fix
//    字符串比较compare
//    可变字符串
    NSMutableString *mutableStr = [NSMutableString stringWithFormat:@"%@_%ld", douyuStr, page];
    NSLog(@"%@", mutableStr);
    
[mutableStr appendFormat:@"sdfsg"];

//作业一
 NSString *wen = @"文艺青年";
    
    NSString *qing = [wen stringByFoldingWithOptions:@"文艺" locale:@"213"];
    NSLog(@"%@", qing);
  //作业二
    NSInteger b = 123;
    NSString *zheng = [[NSString alloc]initWithFormat:@"%ld", b];
     NSLog(@"%@", zheng);
   //作业三
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
