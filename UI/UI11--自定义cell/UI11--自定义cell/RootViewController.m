//
//  RootViewController.m
//  UI11--自定义cell
//
//  Created by dllo on 16/1/26.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "BoyTableViewCell.h"
#import "girlTableViewCell.h"
@interface RootViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, retain) NSString *contentStr;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.contentStr = @"🐲龙🐲龙🐲龙🐲龙🐲龙🐲龙🐲🐲龙🐲龙🐲龙🐲龙🐲龙🐲龙🐲🐲龙🐲龙🐲龙🐲龙🐲龙🐲龙🐲";


    UITableView *table = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    [table release];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //计算高度
    if (0 == indexPath.row % 2) {
        CGFloat height = [BoyTableViewCell getHeightWithStr:self.contentStr];
        NSLog(@"%.1f", height);
        return height;
    }
    else {
        UIImage *image = [UIImage imageNamed:@"屏幕快照 2016-01-18 上午9.39.15副本.png"];
    CGFloat height = 200 * image.size.height / image.size.width;
        return height;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 300;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *boyCell = @"boycell";
    
    BoyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:boyCell];
    if (nil == cell) {
        cell = [[[BoyTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:boyCell] autorelease];
//        cell.label.text = self.contentStr;
        
        }
    static NSString *girlCell = @"girlcell";
    girlTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:girlCell];
    
    if (nil == cell1) {
        cell1 = [[[girlTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:girlCell]autorelease];
        
    }
//    cell.textLabel.text = @"标题";
    if (0 == indexPath.row % 2) {
        [cell setStr:self.contentStr];

        return cell;
    } else {
        [cell1 setImageWithStr:@"屏幕快照 2016-01-18 上午9.39.15副本.png"];
    return cell1;
    }
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
