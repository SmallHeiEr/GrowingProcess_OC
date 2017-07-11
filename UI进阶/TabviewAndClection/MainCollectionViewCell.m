//
//  MainCollectionViewCell.m
//  TabviewAndClection
//
//  Created by dllo on 16/3/22.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "MainCollectionViewCell.h"
#import "NewsModel.h"
@interface MainCollectionViewCell ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation MainCollectionViewCell
#warning 初始化中创建tableView

- (void)dealloc
{
    [_mainTableV release];
    [super dealloc];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.mainTableV = [[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain]autorelease];
        self.mainTableV.delegate = self;
        self.mainTableV.dataSource = self;
        self.mainTableV.rowHeight = 80;
        [self.contentView addSubview:self.mainTableV];
        [self.mainTableV registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.collectionArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.backgroundColor = [UIColor redColor];
//    cell.textLabel.text = [@(indexPath.row) description];
    
    NewsModel *new = [self.collectionArr objectAtIndex:indexPath.row];
    cell.textLabel.text = new.title;
    return cell;
}


@end
