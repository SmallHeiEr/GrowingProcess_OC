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
    self.navigationItem.title = @"通讯录";
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"添加" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarAction)]autorelease];
    self.table = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.table.dataSource = self;
    self.table.delegate = self;
    [self.view addSubview:self.table];
    [self.table release];
    [self getDate];
    self.table.separatorColor = [UIColor redColor];
    self.table.separatorStyle = UITableViewCellSeparatorStyleSingleLineEtched;
   self.navigationItem.leftBarButtonItem = self.editButtonItem;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    Student *stu = [arr objectAtIndex:indexPath.row];
    CGFloat height = [BoyTableViewCell getHeightWithStr:stu.hobby];
    return height;
}
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    [self.table setEditing:editing animated:animated];
}
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
    if (sourceIndexPath.section != proposedDestinationIndexPath.section) {
        return sourceIndexPath;
    }
    return proposedDestinationIndexPath;
}
- (void)setStudent:(Student *)student
{
    NSString *key = [ChineseToPinyin pinyinFromChiniseString:student.name];
    key = [key substringToIndex:1];
    
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    if (nil == arr) {
       arr = [NSMutableArray array];
        [self.stuInfoDic setObject:arr forKey:key];
        [self.arr1 addObject:key];
    }
    [arr addObject:student];
    [self.table reloadData];
    UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"添加成功" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alert2 = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alert1 addAction:alert2];
    [self presentViewController:alert1 animated:YES completion:nil];
}
- (void)rightBarAction
{
    SetViewController *setVC = [[SetViewController alloc]init];
    setVC.delegate = self;
    [self.navigationController pushViewController:setVC animated:YES];
    [setVC release];
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

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)]autorelease];
    view.backgroundColor = [UIColor greenColor];
    return  view;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.arr1.count;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    NSSortDescriptor *sortD = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    [self.arr1 sortUsingDescriptors:[NSArray arrayWithObject:sortD]];
    
    return [self.arr1 objectAtIndex:section];
}

- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return self.arr1;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选中的区:%ld, 行:%ld", indexPath.section, indexPath.row);
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    Student *stu = [arr objectAtIndex:indexPath.row];
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    detailVC.stu = stu;
    
    [self.navigationController pushViewController:detailVC animated:YES];
    [detailVC release];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section   {
    NSString *key = [self.arr1 objectAtIndex:section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    return arr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *BoyCell = @"BoyCell";
    BoyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:BoyCell];
    if (nil == cell) {
        cell = [[[BoyTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:BoyCell]autorelease];
    }
   
    NSString *key = [self.arr1 objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuInfoDic objectForKey:key];
    Student *stu = [arr objectAtIndex:indexPath.row];
    [cell setStr:stu.hobby];
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
