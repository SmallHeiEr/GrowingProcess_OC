//
//  main.m
//  总结
//
//  Created by dllo on 16/1/9.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//**************************字符串*************************//
//    
//    NSString *str = [[NSString alloc] initWithFormat:@"http://www.LANOU3g.com,lanouhenan"];
//    //    长度
//    NSUInteger length = [str length];
//    NSLog(@"%ld", length);
//    //     前缀
//    BOOL isBegin = [str hasPrefix:@"www"];
//    NSLog(@"%d", isBegin);
//    //    后缀
//    BOOL isEnd = [str hasSuffix:@".com"];
//    NSLog(@"%d", isEnd);
    
//    NSRange range = [str rangeOfString:@"ou"];
//    NSLog(@"location:%lu, range:%lu", range.location, range.length);
//    NSLog(@"%@", NSStringFromRange(range));

//    NSString *subStr3 = [str substringToIndex:7];
//    NSLog(@"%@", subStr3);
//    NSRange range2 = {11, 5};
//    NSString *subStr2 = [str substringWithRange:NSMakeRange(11, 5)];
//    NSLog(@"%@", subStr2);
//    NSString *newStr = [str stringByAppendingFormat:@"%@", @"henan"];
//    NSLog(@"%@", newStr);
//    NSString *replaceString = [str stringByReplacingOccurrencesOfString:@"ou" withString:@"xiang"];
//    NSLog(@"%@", replaceString);
//    NSComparisonResult result = [@"aa" compare:@"bb"];
//    NSLog(@"%ld", result);
//    NSInteger value1 = [@"5a2" integerValue];
//    NSLog(@"number:%ld", value1);
//    //    转换为大写
//    NSString *upperString = [str uppercaseString];
//    NSLog(@"%@", upperString);
//    //    转换为小写
//    NSString *lowerString = [str lowercaseString];
//    NSLog(@"%@", lowerString);
//    //    首字母大写
//    NSString *cap = [str capitalizedString];
//    NSLog(@"%@", cap);
//   
//    NSInteger pageZ = 1;
//    NSString *taobaoStr = [NSString stringWithFormat:@"http://www.taobao.com/page=%ld", pageZ];
//    NSString *test = [NSString stringWithFormat:@"小台龟"];
//    NSLog(@"字符串长度:%lu", taobaoStr.length);
//    //    NSString *stu1Z = [taobaoStr substingFromIndex:2];
//    //    NSLog(@"子字符串:%@", sub1Z);
//    NSString *sub5 = [taobaoStr substringFromIndex:2];
//    NSLog(@"子字符串:%@", sub5);
//    NSRange range1 = {1, 2};
//    NSString *sub6 = [taobaoStr substringWithRange:range1];
//    NSString *sub7 = [test substringWithRange:range1];
//    NSLog(@"子字符串:%@", sub6);
//    NSLog(@"子字符串:%@", sub7);
//    //    字符串拼接
//    NSString *sub11 = @"stttr2";
//    NSString *sub02 = @"sf";
//    NSString *sub03 = @"str3";
//    NSInteger page = 3;
//    NSString *comStr = [sub03 stringByAppendingString:sub02];
//    NSLog(@"sub02: %@", sub02);
//    NSLog(@"sub03: %@", sub03);
//    NSLog(@"%@", comStr);
//    NSString *comStr1 = [sub02 stringByAppendingFormat:@"%@随便加%ld", sub03, page];
//    NSLog(@"拼接: %@", comStr1);
//    
//    BOOL result1 = [sub03 isEqualToString:@"sr3"];
//    NSLog(@"%d", result1);
//    if (1 == result1) {
//        NSLog(@"相等");
//    } else {
//        NSLog(@"不相等");
//    }
//    NSRange ran1 = {0, 2};
//    NSLog(@"%@", sub02);
//    NSString *replaNew = [sub02 stringByReplacingOccurrencesOfString:@"t" withString:@"刘" options:0 range:ran1];
//    NSLog(@"liu:%@", replaNew);
//            //    ****可变字符串****    //
//    NSMutableString *strM1 = [NSMutableString stringWithString:@"changStr1"];
//    NSLog(@"%@", strM1);
//    [strM1 appendFormat:@"success%@", sub03];
//    NSLog(@"%@", strM1);
//    [strM1 appendString:sub03];
//    NSLog(@"%@", strM1);
//    NSRange ran2 = {1, 2};
//    [strM1 deleteCharactersInRange:ran2];
//    NSLog(@"%@", strM1);
//    [strM1 insertString:@"hh" atIndex:3];
//    NSLog(@"%@", strM1);
//    [strM1 replaceCharactersInRange:ran2 withString:@"abc"];
//    NSLog(@"%@", strM1);
//    [strM1 replaceOccurrencesOfString:@"ab" withString:@"kk" options:0 range:ran2];
//    NSLog(@"%@", strM1);
//    [strM1 setString:@"qwer"];
//    NSLog(@"%@", strM1);
//    [strM1 capitalizedStringWithLocale:strM1];
//    NSMutableString *strM2 = [NSMutableString stringWithString:@"ertte"];
//    NSLog(@"2222%@", strM2);
//    NSMutableString *a = [[NSMutableString alloc] initWithCapacity:20];
//    NSLog(@"%@", a);
/**************************数组*****************************/
//    NSInteger a1 = 100;
//    NSNumber *numA = [NSNumber numberWithInteger:a1];
//    NSInteger a2 = [numA integerValue];
//    NSLog(@"b = %ld", a2);
//    
//    NSArray *array = [NSArray arrayWithObjects:@"霍格沃茨", @"格兰芬多", @"斯莱特林", @"拉文克劳", @"赫奇帕奇", @"秋·张", @"哈利·波特", @"赫敏·格兰杰", @"韦斯莱·罗恩", @"汤姆·里德尔", @"西弗勒斯·斯内普", @"阿不思·邓布利多", @"小天狼星·布莱克", nil];
//    NSArray *array1 = @[@"魔法石", @"密室", @"阿兹卡班的囚徒", @"火焰杯", @"凤凰社", @"混血亲王子", @"死亡圣器"];
//    NSLog(@"array :%@", array);
//    NSLog(@"array1 :%@", array1);
//    NSLog(@"array元素个数： %ld", array.count);
//    NSString *name = [array objectAtIndex:1];
//    NSLog(@"取出的元素：%@", name);
//    NSInteger index = [array indexOfObject:@"霍格沃茨"];
//    NSLog(@"'霍格沃茨'位置：%ld", index);
//    NSLog(@"C语言形式的取值: %@", array[2]);
////    取第一个值
//    NSString *firstName = [array firstObject];
//    NSLog(@"第一个值:%@", firstName);
////    去最后最新的一个值
//    NSString *lastName = [array lastObject];
//    NSLog(@"最后(最新的)的一个值:%@", lastName);
////    是否包含某个对象
//    BOOL bol = [array containsObject:@"霍格沃茨"];
//    if (bol) {
//        NSLog(@"包含‘霍格沃茨’");
//    }
////    拼接
//    NSString *joinStr = [array componentsJoinedByString:@"\\"];
//    NSLog(@"连接所有字符串:%@", joinStr);
//    NSArray *separArr = [@"I am a student" componentsSeparatedByString:@"t"];
//    NSLog(@"%@", separArr);
////    **********可变数组********
//    NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:@"Tom", @"Jerry", @"Saly", nil];
////    添加
//    [mutableArr addObject:@"Jack"];
//    NSLog(@"========%@", mutableArr);
//    [mutableArr addObject:separArr];
//    [mutableArr addObjectsFromArray:separArr];
//    NSLog(@"=========%@", mutableArr);
//    NSArray *muArr = [mutableArr objectAtIndex:4];
//    NSString *ob = [muArr objectAtIndex:0];
//    NSLog(@"%@", [[mutableArr objectAtIndex:4]objectAtIndex:0]);
//    NSLog(@"%@", mutableArr[4][0]);
////    向某个下标插入一个元素（insert）
//    [mutableArr insertObject:@"insert success" atIndex:2];
//    NSLog(@"%@", mutableArr);
////    删除
//    [mutableArr removeObject:@"Tom"];
//    NSLog(@"%@", mutableArr);
//    [mutableArr removeObjectAtIndex:2];
//    NSLog(@"%@", mutableArr);
//    NSRange ran = {0, 2};
//    [mutableArr removeObjectsInRange:ran];
//    NSLog(@"%@", mutableArr);
////    交换
//    [mutableArr exchangeObjectAtIndex:0 withObjectAtIndex:1];
//    NSLog(@"%@", mutableArr);
////    遍历
//    for (id tmpStr in array) {
//        NSLog(@"--%@", tmpStr);
//    }
//***********字典***********************************//
//    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"班长", @"name", @"女", @"sex", @"瑜伽", @"hobby", nil];
//    for (NSInteger i = 0; i < dic.allKeys.count; i++) {
//    NSString *key = [dic.allKeys objectAtIndex:i];
//        NSLog(@"%@", [dic objectForKey:key]);
//    }
//    for (NSString *key in dic) {
//        NSLog(@"%@", [dic objectForKey:key]);
//    }
//    NSMutableDictionary *dicM = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"longlong", @"name", @"xiao", @"feature", nil];
//    [dicM setObject:@"taigui" forKey:@"pet "];
//    [dicM setObject:@"da" forKey:@"feature"];
//    for (NSString *key in dicM) {
//        NSLog(@"%@", [dicM objectForKey:key]);
//    }
//    NSLog(@"%@", [dicM allKeys]);
////    删除
//    [dicM removeObjectForKey:@"name"];
//    NSLog(@"%@", [dicM allKeys]);
//    for (NSString *key in dicM) {
//        NSLog(@"%@", [dicM objectForKey:key]);
//    }
////    查 - 访问
//    NSLog(@"feature: %@", [dicM objectForKey:@"feature"]);
    //******************集合**********************//
//    NSSet *set = [NSSet setWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
//    NSLog(@"%@", [set anyObject]);
//    NSLog(@"%d", [set containsObject:@"2"]);
////    ******************可变********************
//    NSMutableSet *setM = [NSMutableSet setWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
//    BOOL a = [setM containsObject:@"2"];
//    NSLog(@"%d", a);
//    for (NSString *str in setM) {
//        NSLog(@"++%@", str);
//    }
//    NSMutableSet *setM2 = [NSMutableSet setWithObjects:@"6", @"7", @"8", nil];
////    合并集
//    [setM unionSet:setM2];
////    交集
//    [setM intersectSet:setM2];
////    添加
//    [setM addObject:@"9"];
////    删除
//    [setM removeObject:@"1"];
//    NSCountedSet *setC = [[NSCountedSet alloc] initWithObjects:@"1", @"2", @"2", @"3", nil];
//    NSLog(@"%ld", [setC countForObject:@"2"]);
//    
//    for (NSString *str in setC) {
//        NSLog(@"--%@", str);
//    }
//    Collection(数组， 字典， 集合);
    
    

    
    
    
    
    
    
    NSString * aString = [[NSString alloc] initWithString:@"123"];
    [aString autorelease];
    NSMutableArray * arr =
    [NSMutableArray array];
    [arr addObject:aString];
    NSLog(@"string = %lu",[aString retainCount]);

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
