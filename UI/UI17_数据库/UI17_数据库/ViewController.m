//
//  ViewController.m
//  UI17_数据库
//
//  Created by dllo on 16/3/3.
//  Copyright © 2016年 lanou. All rights reserved.
//
#import "DataBaseHandle.h"
#import "Student.h"
#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *openB = [UIButton buttonWithType:UIButtonTypeSystem];
    openB.frame = CGRectMake(50, 100, 80, 30);
    [openB setTitle:@"打开数据库" forState:UIControlStateNormal];
    [openB addTarget:self action:@selector(openAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:openB];
    
    UIButton *closeB = [UIButton buttonWithType:UIButtonTypeSystem];
    closeB.frame = CGRectMake(180, 100, 80, 30);
    [closeB setTitle:@"关闭数据库" forState:UIControlStateNormal];
    [closeB addTarget:self action:@selector(closeAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeB];
    
    UIButton *createB = [UIButton buttonWithType:UIButtonTypeSystem];
    createB.frame = CGRectMake(50, 150, 80, 30);
    [createB setTitle:@"创建表单" forState:UIControlStateNormal];
    [createB addTarget:self action:@selector(createAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:createB];
    
    UIButton *deleteB = [UIButton buttonWithType:UIButtonTypeSystem];
    deleteB.frame = CGRectMake(180, 150, 80, 30);
    [deleteB setTitle:@"删除表单" forState:UIControlStateNormal];
    [deleteB addTarget:self action:@selector(deleteAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:deleteB];
    
    UIButton *insertDataB = [UIButton buttonWithType:UIButtonTypeSystem];
    insertDataB.frame = CGRectMake(50, 200, 80, 30);
    [insertDataB setTitle:@"插入数据" forState:UIControlStateNormal];
    [insertDataB addTarget:self action:@selector(insertDataAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:insertDataB];
    
    UIButton *upDataB = [UIButton buttonWithType:UIButtonTypeSystem];
    upDataB.frame = CGRectMake(180, 200, 80, 30);
    [upDataB setTitle:@"更新数据" forState:UIControlStateNormal];
    [upDataB addTarget:self action:@selector(upDataAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:upDataB];
    
    UIButton *deleteDataB = [UIButton buttonWithType:UIButtonTypeSystem];
    deleteDataB.frame = CGRectMake(50, 250, 80, 30);
    [deleteDataB setTitle:@"删除数据" forState:UIControlStateNormal];
    [deleteDataB addTarget:self action:@selector(deleteDataAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:deleteDataB];
    
//    UIActivityIndicatorView *acticty = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
//    acticty.frame = CGRectMake(50, 50, 100, 100);
//    [self.view addSubview:acticty];
//    [acticty release];
    
    
    
}
- (void)deleteDataAction
{
    
    
   [[DataBaseHandle shareDataBase] deleteDataWithNum:5];
//   NSMutableArray *arr = [[DataBaseHandle shareDataBase] selectStuSex:@"女"];
}
- (void)upDataAction
{
    Student *stu = [[Student alloc]init];
    stu.name = @"🐲龙";
    stu.sex = @"女";
    stu.age = 22;
    
    [[DataBaseHandle shareDataBase] updataWithStu:stu num:1];
}

- (void)insertDataAction
{
    Student *stu = [[Student alloc]init];
    stu.name = @"斑点狗";
    stu.sex = @"男";
    stu.age = 23;
    
    [[DataBaseHandle shareDataBase] insertDataWithStu:stu];
}

//删除表单

- (void)deleteAction
{
    [[DataBaseHandle shareDataBase] deleteTable];
}


//创建表单
- (void)createAction
{
    [[DataBaseHandle shareDataBase] createTable];
}

//关闭数据库
- (void)closeAction
{
    [[DataBaseHandle shareDataBase] closeDB];
}
//打开数据库
- (void)openAction
{
    [[DataBaseHandle shareDataBase] openDB];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
