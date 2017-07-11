//
//  DataBaseHandle.m
//  UI18_FMDB
//
//  Created by dllo on 16/3/4.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DataBaseHandle.h"
#import "FMDatabase.h"
//#import "FMResultSet.h"
#import "Student.h"
#import "FMDatabaseQueue.h"
@interface DataBaseHandle ()
@property (nonatomic, retain) FMDatabase *fmdb;
@property (nonatomic, retain) NSString *filePath;
@end
@implementation DataBaseHandle
- (void)dealloc
{
    [_filePath release];
    [_fmdb release];
    [super dealloc];
}
+ (instancetype)dataBaseHandle
{
    static DataBaseHandle *dataBase = nil;
    if (nil == dataBase) {
        dataBase = [[DataBaseHandle alloc]init];
    }
    return dataBase;
}

- (void)openDB
{
    NSString *file = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    self.filePath = [file stringByAppendingPathComponent:@"%@dataBaseFmDB%@"];
    NSLog(@"%@", self.filePath);
//    FMDB进行了OC的封装
//    注意先创建对象
    self.fmdb = [[FMDatabase alloc] initWithPath:self.filePath];
    
    BOOL ret = [self.fmdb open];
    if (ret) {
        NSLog(@"打开数据库成功");
    } else {
        NSLog(@"打开数据库失败");
    }
    
    
}

- (void)closeDB
{
    BOOL ret = [self.fmdb close];
    if (ret) {
        NSLog(@"关闭数据库成功");
    } else {
        NSLog(@"关闭数据库失败");
    }

}
- (void)createTable
{
    NSString *sql = @"CREATE TABLE IF NOT EXISTS student(number integer PRIMARY KEY AUTOINCREMENT, name TEXT, sex TEXT, age integer)";
    BOOL ret = [self.fmdb executeUpdate:sql];
    if (ret) {
        NSLog(@"创建表单成功");
    } else {
        NSLog(@"创建表单失败");
    }
}
- (void)deleteTable
{
    NSString *sql = @"DROP TABLE student";
    BOOL ret = [self.fmdb executeUpdate:sql];
    if (ret) {
        NSLog(@"删除表单成功");
    } else {
        NSLog(@"删除表单失败");
    }
}
- (void)insertDataWithStu:(Student *)stu
{
    NSString *sql = [NSString stringWithFormat:@"INSERT INTO student(name, sex, age) VALUES ('%@', '%@', '%ld')", stu.name, stu.sex, stu.age];
    BOOL ret = [self.fmdb executeUpdate:sql];
    if (ret) {
        NSLog(@"插入数据成功");
    } else {
        NSLog(@"插入数据失败");
    }
}
- (void)updataWithStu:(Student *)stu num:(NSInteger)num
{
    NSString *sql = [NSString stringWithFormat:@"UPDATE student SET name = '%@', sex = '%@', age = '%ld' WHERE number = '%ld'", stu.name, stu.sex, stu.age, num];
    BOOL ret = [self.fmdb executeUpdate:sql];
    if (ret) {
        NSLog(@"更新数据成功！");
    } else {
        NSLog(@"更新数据失败！");
    }
}
- (void)deleteDataWithNum:(NSInteger)num
{
    
    NSString *sql = [NSString stringWithFormat:@"DELETE FROM student WHERE number = '%ld'", num];
    BOOL ret = [self.fmdb executeUpdate:sql];
    if (ret) {
        NSLog(@"删除数据成功");
    } else {
        NSLog(@"删除数据失败！");
    }
}
- (NSMutableArray *)selectStuSex:(NSString *)sex
{
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM student WHERE  sex LIKE '%%%@%%'", sex];
    FMResultSet *resSet = [self.fmdb executeQuery:sql];

    NSMutableArray *stuArr = [NSMutableArray array];
//解析每一行
    while ([resSet next]) {
            Student *stu = [[Student alloc]init];
            stu.name = [resSet stringForColumn:@"name"];
            stu.sex = [resSet stringForColumn:@"sex"];
            stu.age = [resSet longForColumn:@"age"];
            [stuArr addObject:stu];
            [stu release];
            
        }
        return stuArr;
    
}

- (void)insertMoreStudent:(Student *)stu
{
    //创建队列
    FMDatabaseQueue *dataQ = [FMDatabaseQueue databaseQueueWithPath:self.filePath];
    
    //队列中任务要做的操作
    [dataQ inTransaction:^(FMDatabase *db, BOOL *rollback) {
        
        NSString *sql = [NSString stringWithFormat:@"INSERT INTO student(name, sex, age) VALUES ('%@', '%@', '%ld')", stu.name, stu.sex, stu.age];
        BOOL ret = [db executeUpdate:sql];
        if (ret) {
            NSLog(@"插入数据成功");
        } else {
            NSLog(@"插入数据失败");
        }
    }];
    
}






@end
