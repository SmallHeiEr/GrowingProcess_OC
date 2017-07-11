//
//  ViewController.m
//  UI_MyCoreData
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

#import "CoreDataManager.h"
#import "Student+CoreDataProperties.h"
@interface ViewController ()
@property (nonatomic, strong)CoreDataManager *dataManager;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

//XIB里面不走初始化方法
- (void)awakeFromNib
{
#pragma mark - 1.初始化coreDataManager 工具类对象
    self.dataManager = [CoreDataManager defaultManager];
}


- (IBAction)addAction:(UIButton *)sender {
#pragma mark - 2.创建Student 实体
    Student *stu = [[Student alloc] initWithEntity:[NSEntityDescription entityForName:@"Student" inManagedObjectContext:self.dataManager.managedObjectContext] insertIntoManagedObjectContext:self.dataManager.managedObjectContext];
    
    stu.name = @"金瓶儿";
    stu.telephone = @(18818881888);
    stu.age = @(15);
//    写入数据库
    [self.dataManager saveContext];
    
}
- (IBAction)deleteAction:(UIButton *)sender {
    
    //想删除谁，先找谁
    NSFetchRequest *requset = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = '张*'"];
    
    [requset setPredicate:predicate];
    
    NSArray *arr = [self.dataManager.managedObjectContext executeFetchRequest:requset error:nil];
    for (Student *stu in arr) {
        [self.dataManager.managedObjectContext deleteObject:stu];
    }
    
//    记得写入数据库，否则真正的数据库是没有变化的
    [self.dataManager saveContext];

}
- (IBAction)changeAction:(UIButton *)sender {
    
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    NSPredicate *predict = [NSPredicate predicateWithFormat:@"name = '张小凡'"];
    [request setPredicate:predict];
    
    NSArray *arr = [self.dataManager.managedObjectContext executeFetchRequest:request error:nil];
    for (Student *stu in arr) {
        stu.name = @"血公子";
        
    }
    
    [self.dataManager saveContext];
    
}
- (IBAction)SearchAction:(UIButton *)sender {

    //    根据实体绑定查询
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    
    //设置过滤条件
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = '张小凡'"];
    
    //2.AND （且）(加条件)
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = '秦无炎' AND age = 15"];
    
    //3. OR(或)
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = '秦无炎' OR name = '金瓶儿'"];
    
    //4.CONTAINS
//     NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS '小' OR name = '金瓶儿'"];
    
//    5.LIKE (*代表多个字符 %代表一个字符)
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name LIKE '血公子'"];
//    
//    //给查询设置过滤条件
//    [request setPredicate:predicate];
    
    //进行查询
    NSArray *arr = [self.dataManager.managedObjectContext executeFetchRequest:request error:nil];
    
    //打印查询结果
    for (Student *stu in arr) {
        NSLog(@"%@", stu.name);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
