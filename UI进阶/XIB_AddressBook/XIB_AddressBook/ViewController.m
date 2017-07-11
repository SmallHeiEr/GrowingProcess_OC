//
//  ViewController.m
//  XIB_AddressBook
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "Student+CoreDataProperties.h"
#import "CoreDataManager.h"
#import "SetViewController.h"
#import "InfoViewController.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong)CoreDataManager *dataManager;
@property (weak, nonatomic) IBOutlet UITableView *tableV;
@property (nonatomic, strong) NSArray *arr;
@property (nonatomic, strong)UIStoryboardSegue *segue;
@end

@implementation ViewController
- (void)awakeFromNib
{
#pragma mark - 1.初始化coreDataManager 工具类对象
    self.dataManager = [CoreDataManager defaultManager];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.arr = [NSMutableArray array];
     [self getDate];
    [self.tableV registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}
//点击切换添加页面
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SetViewController *firstVC = segue.destinationViewController;
    [UIView transitionFromView:segue.sourceViewController.view toView:firstVC.view duration:1 options:UIViewAnimationOptionTransitionCrossDissolve completion:^(BOOL finished) {
        
        
    }];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    [self.tableV setEditing:editing animated:animated];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    InfoViewController *infoVC = [[InfoViewController alloc] init];
    Student *stu = [self.arr objectAtIndex:indexPath.row];
    infoVC.stu = stu;
    infoVC = _segue.destinationViewController;
    
//    [self.navigationController pushViewController:infoVC animated:nil];
//
}
//删除
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
   // Student *stu = [[Student alloc] init];
    Student *stu = [self.arr objectAtIndex:indexPath.row];
    
    NSFetchRequest *requset = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@", stu.name];
    
    [requset setPredicate:predicate];
    
    NSArray *arr = [self.dataManager.managedObjectContext executeFetchRequest:requset error:nil];
    for (Student *stu in arr) {
        [self.dataManager.managedObjectContext deleteObject:stu];
    }
    
    //    记得写入数据库，否则真正的数据库是没有变化的
    [self.dataManager saveContext];
    [self getDate];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Student *stu = [self.arr objectAtIndex:indexPath.row];
    cell.textLabel.text = stu.name;
    cell.detailTextLabel.text = [stu.phoneNumber description];
    return cell;
}
- (void)getDate
{
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    self.arr = [self.dataManager.managedObjectContext executeFetchRequest:request error:nil];
    NSLog(@"%@", self.arr);
    [self.tableV reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
