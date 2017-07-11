//
//  ViewController.m
//  MVVM
//
//  Created by dllo on 16/4/19.
//  Copyright © 2016年 dllo. All rights reserved.
//

// MVC (Model模型) (View视图) (Controller视图控制器)
// >1. M和V不能直接通信，需要依靠C

// MVVM (Model模型) (V视图+视图控制器) (VM(ViewModel网络请求+逻辑处理等))
// >1. (重要) 目的是解决MVC中C过于沉重


#import "NewsCellModel.h"
#import "ViewController.h"
#import "NewsViewModel.h"
#import "CellFactory.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *firstTableView;
@property (nonatomic, strong) NSMutableArray *tableArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableArr = [NSMutableArray array];
    [self createTableView];
    [self getDate];
    
}
- (void)getDate
{
//    在block块里面，参数arr就是传过来的数组
   [NewsViewModel getDate:^(NSMutableArray *arr) {
       
       self.tableArr = arr;
       dispatch_async(dispatch_get_main_queue(), ^{
           
           [_firstTableView reloadData];
       });
       
   }];
}
- (void)createTableView
{
    self.firstTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _firstTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _firstTableView.delegate = self;
    _firstTableView.dataSource = self;
    
    [self.view addSubview:_firstTableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsCellModel *model = self.tableArr[indexPath.row];
    CellFactory *cell = [CellFactory cellWithTableView:tableView identifier:@"vcCell" model:model];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
