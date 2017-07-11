//
//  CellFactory.m
//  MVVM
//
//  Created by dllo on 16/4/19.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "CellFactory.h"

@implementation CellFactory


+ (CellFactory *)cellWithTableView:(UITableView *)tableView identifier:(NSString *)identifier model:(id)model
{
//    1.把model转化成字符串
    NSString *modelName = NSStringFromClass([model class]);
    
//    2.把model后5个字符串去掉(拿到对应cell的类名的字符串)
    modelName = [modelName substringToIndex:modelName.length - 5];
    
//    3.把cell类名字符串转化成类
    Class cel = NSClassFromString(modelName);
    
//    4.从tableView重用池取出tableView
    CellFactory *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
//    5.如果为空，则创建cell
    if (cell == nil) {
//        6.这里用上面model转化过来的cell
        cell = [[[cel class] alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
//    7.cell赋值（对应找自己的setModel方法）
    [cell setDateWithModel:model];
    
    return cell;
}
//因为当你cell获取失败的时候，找不到setDataWithModel会走当前类的setDataWithModel的实现
//所以什么也不干
- (void)setDateWithModel:(id)model
{
    
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
