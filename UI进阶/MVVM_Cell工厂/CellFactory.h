//
//  CellFactory.h
//  MVVM
//
//  Created by dllo on 16/4/19.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellFactory : UITableViewCell

//Cell工厂核心方法：
//1）.参数1 传入tableView对象
//2）.参数2 tableView 重用标示
//3）.参数3 此tableViewCell中要用到的model
+ (CellFactory *)cellWithTableView:(UITableView *)tableView identifier:(NSString *)identifier model:(id)model;
- (void)setDateWithModel:(id)model;


@end
