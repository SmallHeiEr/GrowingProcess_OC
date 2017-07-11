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
    UITableView *table = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
//    注意，tableview代理有两个
    table.dataSource  = self;
    table.delegate = self;
    [self.view addSubview:table];
    [table release];
//    行高，若协议设置行高，此句无效
    //table.rowHeight = 200;
//    整个tableView的头视图
//    坐标只有高度生效
//    UIView *headerV = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 40)];
//    headerV.backgroundColor = [UIColor redColor];
//    table.tableHeaderView = headerV;
//    [headerV release];
    
    [self getDate];
    //风格属性
//    分割线样式
    table.separatorStyle =  UITableViewCellSeparatorStyleSingleLineEtched;
    table.separatorColor = [UIColor cyanColor];
    
    
    
    
    
    
    
    
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
           stu.phone = [stuDic objectForKey:@"phone"];
            
            [stuArr addObject:stu];
            [stu release];
        }
//        将学生数组放进字典里
        [self.stuDic setObject:stuArr forKey:key];
        
    }
    
    
    
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section:(NSInteger)section
{
//区头视图
//    坐标无效
    UIView *view = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)]autorelease];
    view.backgroundColor = [UIColor greenColor];
    return view;



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
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选中的区：%ld, 行：%ld", indexPath.section, indexPath.row);
    //    根据分区数获取key
    NSString *key = [self.stuDic.allKeys objectAtIndex:indexPath.section];
    //    根据key获取数组
    NSMutableArray *arr = [self.stuDic objectForKey:key];
    //    根据行号获取学生对象
    Student *stu = [arr objectAtIndex:indexPath.row];

   
    DetailViewController *detailVC = [[DetailViewController alloc]init];
    detailVC.stu = stu;
    UINavigationController *detailNC = [[UINavigationController alloc]initWithRootViewController:detailVC];
    [self presentViewController:detailNC animated:YES completion:nil];
    [detailNC release];
    [detailVC release];
    
    
}


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
    cell.detailTextLabel.text = stu.phone;
    
    
    
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
