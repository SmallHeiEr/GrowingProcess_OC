//
//  BoyTableViewCell.m
//  UI11--自定义cell
//
//  Created by dllo on 16/1/26.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "BoyTableViewCell.h"

@implementation BoyTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubviews];
        
    }
    return self;
}

- (void)createSubviews
{
    self.backgroundColor = [UIColor lightGrayColor];
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    self.label.text = @"暂无";
    self.label.numberOfLines = 0;
//    注意添加的位置，若添加到self上则不会跟随编辑按钮右移
    [self.contentView addSubview:self.label];
    [_label release];
}
+ (CGFloat)getHeightWithStr:(NSString *)str
{
    CGRect rect = [str boundingRectWithSize:CGSizeMake(200, 10000) options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObject:[UIFont systemFontOfSize:18.0] forKey:NSFontAttributeName] context:nil];
    return rect.size.height;
}
- (void)setStr:(NSString *)str
{
//    自适应高度
    CGFloat height = [[self class] getHeightWithStr:str];
    [self.label setFrame:CGRectMake(0, 0, 300, height)];
    self.label.text = str;
}

//当view的布局信息发生改变时会重新触发布局
- (void)layoutSubviews
{
    [super layoutSubviews];
    
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
