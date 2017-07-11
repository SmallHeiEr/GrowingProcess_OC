//
//  RootViewController.m
//  UI9__tableView
//
//  Created by dllo on 16/1/22.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "Student.h"
#import "DetailViewController.h"
@interface RootViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic,retain) NSMutableDictionary *stuDic;
@property (nonatomic, retain) UITableView *table;
@end

@implementation RootViewController
- (void)dealloc
{
    [_stuDic release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.table = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.table.dataSource  = self;
    self.table.delegate = self;
    [self.view addSubview:self.table];
    [self.table release];
    [self getDate];
    //风格属性
//    分割线样式
    self.table.separatorStyle =  UITableViewCellSeparatorStyleSingleLineEtched;
    self.table.separatorColor = [UIColor cyanColor];
#warning 编辑 - 创建编辑按钮
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
#warning 编辑2 - 关联编辑按钮和tableView编辑功能
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    [self.table setEditing:editing animated:animated];
}
#warning 编辑3 - 设置是否允许编辑
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
#warning 编辑3 - 设置编辑样式（无/删除/插入）
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    举例：前4个区删除样式，中间4个插入，剩下的无编辑
    if (indexPath.section < 4) {
        return UITableViewCellEditingStyleDelete;
    }
    if (indexPath.section >= 4 && indexPath.section < 8) {
        return UITableViewCellEditingStyleInsert;
    }
    
    return UITableViewCellEditingStyleNone;
}
#warning 编辑5 - 实现编辑逻辑 - 点击编辑实际功能时触发，并且可以左滑进编辑状态
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"sss");
    //    先操作数据
//    根据坐标获取对象
    NSString *key = [self.stuDic.allKeys objectAtIndex:indexPath.section];
    NSMutableArray *arr = [self.stuDic objectForKey:key];
    if (UITableViewCellEditingStyleDelete == editingStyle) {
        
    
    

//    Student *stu = [arr objectAtIndex:indexPath.row];
//    删除学生信息
    [arr removeObjectAtIndex:indexPath.row];
    
    
    
//    后操作界面
    [self.table reloadData];
//    [self.table deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    
    }
    if (UITableViewCellEditingStyleInsert == editingStyle) {
        Student *stu = [[Student alloc]init];
        stu.name = @"龙❤️龟";
        stu.phoneNumber = @"133521521521";
//        插入数据
        [arr insertObject:stu atIndex:indexPath.row];
//        界面操作
        [self.table insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
        
        
    }
    
    
    
}
#warning 移动3 - 设置是否允许移动
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
#
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    NSLog(@"ssss");
    
    //先操作数据
    NSString *sourceKey = [self.stuDic.allKeys objectAtIndex:sourceIndexPath.section];
    NSMutableArray *sourceArr = [self.stuDic objectForKey:sourceKey];
//    得到要删除的学生对象，并从数组中删除
//    注意引用计数！！！！
    Student *stu = [sourceArr objectAtIndex:sourceIndexPath.row];
    [stu retain];
    [sourceArr removeObjectAtIndex:sourceIndexPath.row];
    
    NSString *desKey = [self.stuDic.allKeys objectAtIndex:destinationIndexPath.section];
    NSMutableArray *desArr = [self.stuDic objectForKey:desKey];
    [desArr insertObject:stu atIndex:destinationIndexPath.row];
    [stu release];
   }
#warning 移动5 - 限制跨区移动
- (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath
{
//    若源区与目的区不同，返回源区坐标，实现禁止跨区
    if (sourceIndexPath.section != proposedDestinationIndexPath.section) {
        return sourceIndexPath;
    }
    return proposedDestinationIndexPath;
}
- (void)getDate
{
//    获取文件路径
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"StudentInfo" ofType:@"plist"];
//    根据路径获取字典
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
//    NSLog( @"%@", dic);
//    不要忘记开空间
    self.stuDic = [NSMutableDictionary dictionary];
//    遍历字典
    for (NSString *key in dic) {
        
//        创建学生数组， 存stu对象
        NSMutableArray *stuArr = [NSMutableArray array];
//        遍历数组
        for (NSDictionary *stuDic in [dic objectForKey:key]) {
            Student *stu = [[Student alloc]init];
          stu.name = [stuDic objectForKey:@"name"];
           stu.phoneNumber = [stuDic objectForKey:@"phone"];
            
            [stuArr addObject:stu];
            [stu release];
        }
//        将学生数组放进字典里
        [self.stuDic setObject:stuArr forKey:key];
        
    }
}
//可选实现方法
//分区数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.stuDic.allKeys.count;
}
//区头标题
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.stuDic.allKeys objectAtIndex:section];
}
//右边索引
- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return self.stuDic.allKeys;
}
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"选中的区：%ld, 行：%ld", indexPath.section, indexPath.row);
//    //    根据分区数获取key
//    NSString *key = [self.stuDic.allKeys objectAtIndex:indexPath.section];
//    //    根据key获取数组
//    NSMutableArray *arr = [self.stuDic objectForKey:key];
//    //    根据行号获取学生对象
//    Student *stu = [arr objectAtIndex:indexPath.row];
//
//   
//    DetailViewController *detailVC = [[DetailViewController alloc]init];
//    detailVC.stu = stu;
//    UINavigationController *detailNC = [[UINavigationController alloc]initWithRootViewController:detailVC];
//    [self presentViewController:detailNC animated:YES completion:nil];
//    [detailNC release];
//    [detailVC release];
//    
//    
//}
//

//必须实现的方法 --返回某一分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//根据分区找到对应key
    NSString *key = [self.stuDic.allKeys objectAtIndex:section];
//    根据key获取对应数组
    NSMutableArray *arr = [self.stuDic objectForKey:key];
//返回元素个数
    return arr.count;
}
//必须实现的方法 --返回
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
//    重要机制---重要
    //cell标识
    //static编译时编译一次，执行时就不用了(预编译  编译  执行三步骤)
   static NSString *cellStr = @"cell";
//    先到重用池中取cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellStr];
//    若没取到cell就创建
    if (nil == cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr] autorelease];
//        NSLog(@"111");
    }
    cell.imageView.image = [UIImage imageNamed:@"屏幕快照 2016-01-20 下午4.09.10.png"];
//    选中时背景颜色
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
//    cell辅助视图的样式
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
//    cell.textLabel.text = @"🐲";
//cell.detailTextLabel.text = @"龙龙";
//    根据分区数获取key
    NSString *key = [self.stuDic.allKeys objectAtIndex:indexPath.section];
//    根据key获取数组
    NSMutableArray *arr = [self.stuDic objectForKey:key];
//    根据行号获取学生对象
    Student *stu = [arr objectAtIndex:indexPath.row];
    cell.textLabel.text = stu.name;
    cell.detailTextLabel.text = stu.phoneNumber;
    
    
    
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
