//
//  RootViewController.m
//  UI--通讯录综合
//
//  Created by dllo on 16/1/27.
//  Copyright © 2016年 lanou. All rights reserved.
//


#import "RootViewController.h"
#import "Student.h"
#import "DetailViewController.h"
#import "SetViewController.h"
#import "ChineseToPinyin.h"
#import "DataBaseHandle.h"
@interface RootViewController ()<UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (nonatomic, retain) UITableView *tableV;
@property (nonatomic, retain) NSMutableDictionary *stu;
@property (nonatomic, retain) NSMutableArray *arr1;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableV = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableV.delegate = self;
    self.tableV.dataSource = self;
    [self.view addSubview:self.tableV];
    [self.tableV release];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.tableV getDate];
    
    
}
- (void)getDate
{
    NSString *file = [[NSBundle mainBundle]pathForResource:@"StudentInfo" ofType:@"plest"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:file];
    self.stu = [[Student alloc]init];
    for (NSString *key in dic) {
        NSMutableArray *arr = [NSMutableArray array];
        for (NSDictionary *studic in [dic objectForKey:key]) {
            Student *stu = [[Student alloc]init];
            [stu setValuesForKeysWithDictionary:studic];
            [arr addObject:stu];
            [stu release];
        }
        [self.stu setValue:arr forKey:key];
    }
    self.arr1 = [NSMutableArray arrayWithArray:self.stu.allKeys];
}
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    [self.tableV setEditing:editing animated:animated];
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stu objectForKey:key];
    [arr removeObjectAtIndex:indexPath.row];
    arr removeObjectAtIndex:<#(NSUInteger)#>
}
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.arr1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.arr1.count;
}
-(NSArray <NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return self.arr1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *key = [self.arr1 objectAtIndex:section];
    NSMutableArray *arr = [self.stu objectForKey:key];
    return arr.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellStr = @"cell";
    UITableViewCell *cell = [tableView ];
    if (nil == cell) {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr]autorelease];
        
    }
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stu objectForKey:key];
    Student *stu = [arr objectAtIndex:indexPath.row];
    cell
}
    - (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
