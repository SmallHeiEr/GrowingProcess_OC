//
//  DataBaseHandle.h
//  UI17_数据库
//
//  Created by dllo on 16/3/3.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Student;
@interface DataBaseHandle : NSObject

+ (instancetype)shareDataBase;
- (void)openDB;
- (void)closeDB;
- (void)createTable;
- (void)deleteTable;
- (void)insertDataWithStu:(Student *)stu;
- (void)updataWithStu:(Student *)stu num:(NSInteger)num;
- (void)deleteDataWithNum:(NSInteger)num;
- (NSMutableArray *)selectStuSex:(NSString *)sex;


@end
