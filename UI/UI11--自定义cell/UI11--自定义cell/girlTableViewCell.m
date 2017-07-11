//
//  girlTableViewCell.m
//  UI11--自定义cell
//
//  Created by dllo on 16/1/26.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "girlTableViewCell.h"

@implementation girlTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUp];
        
    }
    return self;
}
- (void)setUp
{
    self.backgroundColor = [UIColor cyanColor];
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 70, 30)];
    self.label.text = @"long";
    [self.contentView addSubview:self.label];
    [self.label release];
    self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(100, 0, 200, 30)];
    [self.contentView addSubview:self.imageV];
    [self.imageV release];
}
- (void)setImageWithStr:(NSString *)str
{
    UIImage *image = [UIImage imageNamed:str];
    self.imageV.image = image;
    CGFloat height = 200 * image.size.height / image.size.width;
//    [self.imageV setFrame:CGRectMake(0, 0, 200, height)];
//    错误写法
//    self.imageV.frame.size.height = height;
    CGRect frame = self.imageV.frame;
    frame.size.height = height;
    self.imageV.frame = frame;
    
    
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
