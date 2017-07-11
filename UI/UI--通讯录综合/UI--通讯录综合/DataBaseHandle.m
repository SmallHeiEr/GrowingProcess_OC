//
//  DataBaseHandle.m
//  UI--通讯录综合
//
//  Created by dllo on 16/1/27.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DataBaseHandle.h"
#import "RootViewController.h"
#import "Student.h"
@implementation DataBaseHandle

+ (instancetype)shareDataBase
{
    static DataBaseHandle *dataBaseH = nil;
    if (nil == dataBaseH) {
        dataBaseH = [[DataBaseHandle alloc] init];
        [dataBaseH getDate];
    }
    return dataBaseH;
}
- (void)getDate
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"StudentInfo" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    self.stuInfoDic = [NSMutableDictionary dictionary];
    
    for (NSString *key in dic) {
        NSMutableArray *stuArr = [NSMutableArray array];
        for (NSDictionary *stuDic in [dic objectForKey:key]) {
            Student *stu = [[Student alloc]init];
            [stu setValuesForKeysWithDictionary:stuDic];
            [stuArr addObject:stu];
            [stu release];
        }
        [self.stuInfoDic setObject:stuArr forKey:key];
    }
    self.arr1 = [NSMutableArray arrayWithArray:self.stuInfoDic.allKeys];
    
}

@end
