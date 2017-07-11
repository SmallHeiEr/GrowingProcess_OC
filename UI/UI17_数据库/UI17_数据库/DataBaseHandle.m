//
//  DataBaseHandle.m
//  UI17_数据库
//
//  Created by dllo on 16/3/3.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DataBaseHandle.h"
#import <sqlite3.h>
#import "Student.h"
@implementation DataBaseHandle

+ (instancetype)shareDataBase
{
    static DataBaseHandle *dataBase = nil;
    if (nil == dataBase) {
        dataBase = [[DataBaseHandle alloc]init];
    }
    return dataBase;
}

static sqlite3 *DB = nil;

- (void)openDB
{
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    NSString *file = [filePath stringByAppendingPathComponent:@"dataBase.db"];
    
    NSLog( @"%@", file);
    
    //打开数据库
    int ret = sqlite3_open(file.UTF8String, &DB);
    if (SQLITE_OK == ret) {
        NSLog(@"打开数据库成功！");
    } else {
        NSLog(@"打开数据库失败");
    }
    
    
}

- (void)closeDB
{
    int ret = sqlite3_close(DB);
    if (SQLITE_OK == ret) {
        NSLog(@"关闭数据库成功！");
    } else {
        NSLog(@"关闭数据库失败");
    }
}

- (void)createTable
{
    NSString *sqlStr = @"CREATE TABLE IF NOT EXISTS student(number integer PRIMARY KEY AUTOINCREMENT, name TEXT, sex TEXT, age integer)";
    int ret = sqlite3_exec(DB, sqlStr.UTF8String, NULL, NULL, NULL);
    if (SQLITE_OK == ret) {
        NSLog(@"创建表单成功！");
    } else {
        NSLog(@"创建表单失败！");
    }
}

- (void)deleteTable
{
    NSString *sqlStr = @"DROP TABLE student";
    int ret = sqlite3_exec(DB, sqlStr.UTF8String, NULL, NULL, NULL);
    if (SQLITE_OK == ret) {
        NSLog(@"删除表单成功！");
    } else {
        NSLog(@"删除表单失败！");
    }
}
- (void)insertDataWithStu:(Student *)stu
{
    NSString *sqlStr = [NSString stringWithFormat:@"INSERT INTO student(name, sex, age) VALUES ('%@', '%@', '%ld')", stu.name, stu.sex, stu.age];
    int ret = sqlite3_exec(DB, sqlStr.UTF8String, NULL, NULL, NULL);
    if (SQLITE_OK == ret) {
        NSLog(@"添加数据成功！");
    } else {
        NSLog(@"添加数据失败！");
    }
}

- (void)updataWithStu:(Student *)stu num:(NSInteger)num
{
    NSString *sqlStr = [NSString stringWithFormat:@"UPDATE student SET name = '%@', sex = '%@', age = '%ld' WHERE number = '%ld'", stu.name, stu.sex, stu.age, num];
    int ret = sqlite3_exec(DB, sqlStr.UTF8String, NULL, NULL, NULL);
    if (SQLITE_OK == ret) {
        NSLog(@"更新数据成功！");
    } else {
        NSLog(@"更新数据失败！");
    }
}

- (void)deleteDataWithNum:(NSInteger)num
{
    
    NSString *sqlStr = [NSString stringWithFormat:@"DELETE FROM student WHERE number = '%ld'", num];
    int ret = sqlite3_exec(DB, sqlStr.UTF8String, NULL, NULL, NULL);
    if (SQLITE_OK == ret) {
        NSLog(@"删除数据成功！");
    } else {
        NSLog(@"删除数据失败！");
    }
}

- (NSMutableArray *)selectAllStudent
{
    NSString *sqlStr = @"SELECT * FROM student";
    sqlite3_stmt *stmt = nil;
    int ret = sqlite3_prepare_v2(DB, sqlStr.UTF8String, -1, &stmt, NULL);
    if (SQLITE_OK == ret) {
//        学生数组
        NSMutableArray *stuArr = [NSMutableArray array];
//        逐行解析
        while (SQLITE_ROW == sqlite3_step(stmt)) {
//            参数2：列数；
           const unsigned char *name = sqlite3_column_text(stmt, 1);
            const unsigned char *sex = sqlite3_column_text(stmt, 2);
            sqlite3_int64 age = sqlite3_column_int64(stmt, 3);
            Student *stu = [[Student alloc]init];
            stu.name = [NSString stringWithUTF8String:(const char *)name];
            stu.sex = [NSString stringWithUTF8String:(const char *)sex];
            stu.age = (NSInteger)age;
            [stuArr addObject:stu];
            [stu release];
            
        }
        return stuArr;
    }
    else {
        NSLog(@"查询失败");
        return nil;
    }
}

- (NSMutableArray *)selectStuSex:(NSString *)sex
{
    NSString *sqlStr = [NSString stringWithFormat:@"SELECT * FROM student WHERE  sex LIKE '%%%@%%'", sex];
    sqlite3_stmt *stmt = nil;
    int ret = sqlite3_prepare_v2(DB, sqlStr.UTF8String, -1, &stmt, NULL);
    if (SQLITE_OK == ret) {
        //        学生数组
        NSMutableArray *stuArr = [NSMutableArray array];
        //        逐行解析
        while (SQLITE_ROW == sqlite3_step(stmt)) {
            //            参数2：列数；
            const unsigned char *name = sqlite3_column_text(stmt, 1);
            const unsigned char *sex = sqlite3_column_text(stmt, 2);
            sqlite3_int64 age = sqlite3_column_int64(stmt, 3);
            Student *stu = [[Student alloc]init];
            stu.name = [NSString stringWithUTF8String:(const char *)name];
            stu.sex = [NSString stringWithUTF8String:(const char *)sex];
            stu.age = (NSInteger)age;
            [stuArr addObject:stu];
            [stu release];
            
        }
        return stuArr;
    }
    else {
        NSLog(@"查询失败");
        return nil;
    }
}


@end
