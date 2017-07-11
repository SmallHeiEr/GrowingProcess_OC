//
//  DataBaseHandle.h
//  UI18_FMDB
//
//  Created by dllo on 16/3/4.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Student;
@interface DataBaseHandle : NSObject
- (void)openDB;
- (void)closeDB;
- (void)createTable;
- (void)deleteTable;
- (void)insertDataWithStu:(Student *)stu;
- (void)updataWithStu:(Student *)stu num:(NSInteger)num;
- (void)deleteDataWithNum:(NSInteger)num;
+ (instancetype)dataBaseHandle;
- (NSMutableArray *)selectStuSex:(NSString *)sex;
- (void)insertMoreStudent:(Student *)stu;

@end
