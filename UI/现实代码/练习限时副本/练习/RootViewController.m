//
//  RootViewController.m
//  练习
//
//  Created by dllo on 16/1/22.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "Student.h"
#import "DetailViewController.h"
#import "SetViewController.h"
#import "ChineseToPinyin.h"
#import "BoyTableViewCell.h"
@interface RootViewController ()<UITableViewDataSource, UITableViewDelegate, SetViewControllerDelegate>
@property (nonatomic, retain) NSMutableDictionary *stuInfoDic;
@property (nonatomic, retain) NSMutableArray *arr1;
@property (nonatomic, retain) UITableView *table;
@end

@implementation RootViewController
- (void)dealloc
{
    [_arr1 release];
    [_stuInfoDic release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.table = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.view addSubview:self.table];
    [self.table release];
    [self getDate];
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"添加" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction)]autorelease];
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    
    
    
    
    
    
}

#warning 自适应高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    Student *stu = [arr objectAtIndex:indexPath.row];
    CGFloat height = [BoyTableViewCell getHeightWithStr:stu.hobby];
    return height;
}
#warning 编辑2 - 关联编辑按钮和tableview编辑功能
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    [self.table setEditing:editing animated:animated];
}
#warning 编辑5 - 实现编辑逻辑
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    [arr removeObjectAtIndex:indexPath.row];
    if (0 == arr.count) {
        [self.arr1 removeObject:key];
        [self.stuInfoDic removeObjectForKey:key];
    }
    [self.table reloadData];
}
#warning 移动4 - 实现移动逻辑 - 实际移动时触发
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    NSString *key1 = [self.arr1 objectAtIndex:sourceIndexPath.section];
    NSMutableArray *arr1 = [self.stuInfoDic objectForKey:key1];
    Student *stu = [[Student alloc]init];
    [stu retain];
    [arr1 removeObject:stu];
    NSString *key2 = [self.arr1 objectAtIndex:destinationIndexPath.section];
    NSMutableArray *arr2 = [self.stuInfoDic objectForKey:key2];
    [arr2 insertObject:stu atIndex:destinationIndexPath.row];
    [stu release];
}
- (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath
{
    if (sourceIndexPath.section == proposedDestinationIndexPath.section) {
        return proposedDestinationIndexPath;
    }
    return sourceIndexPath;
}
#warning 获取字典
- (void)getDate
{
    NSString *file = [[NSBundle mainBundle] pathForResource:@"StudentInfo" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:file];
    self.stuInfoDic = [NSMutableDictionary dictionary];
    for (NSString *key in dic) {
        NSMutableArray *arr = [NSMutableArray array];
        for (NSDictionary *stuDic in [dic objectForKey:key]) {
            Student *stu = [[Student alloc]init];
            [stu setValuesForKeysWithDictionary:stuDic];
            [arr addObject:stu];
            [stu release];
        }
        [self.stuInfoDic setValue:arr forKey:key];
    }
    self.arr1 = [NSMutableArray arrayWithArray:self.stuInfoDic.allKeys];
}
#warning 增加学生
- (void)setStudent:(Student *)student
{
    NSString *key = [ChineseToPinyin pinyinFromChiniseString:student.name];
    key = [key substringToIndex:1];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    if (0 == arr.count) {
        [self.arr1 addObject:key];
        [self.stuInfoDic setObject:arr forKey:key];
    }
    [arr addObject:student];
    [self.table reloadData];
}
#warning right
- (void)rightAction
{
    SetViewController *setVC = [SetViewController alloc];
    [self.navigationController pushViewController:setVC animated:YES];
    setVC.delegate = self;
    [setVC release];
}
#warning 选中某区
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    DetailViewController *detailVC = [[DetailViewController alloc]init];
    detailVC.stu = [arr objectAtIndex:indexPath.row];
    [detailVC release];
}
#warning 分区数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.arr1.count;
}
#warning 区标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
//
    return [self.arr1 objectAtIndex:section];
}
#warning 某一分区下的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     NSString *key = [self.arr1 objectAtIndex:section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    return arr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellStr = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    if (nil == cell) {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr]autorelease];
    }
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    Student *stu = [arr objectAtIndex:indexPath.row];
    cell.textLabel.text = stu.name;
    cell.detailTextLabel.text = stu.phoneNumber;
    cell.imageView.image = stu.picture;
    
    return cell;
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
