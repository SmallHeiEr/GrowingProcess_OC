//
//  NewsCell.m
//  MVVM
//
//  Created by dllo on 16/4/19.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "NewsCell.h"
#import "NewsCellModel.h"
@implementation NewsCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 150, 40)];
//        self.label.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:_label];
    }
    return self;
}
- (void)setDateWithModel:(id)model
{
    NewsCellModel *newModel = (NewsCellModel *)model;
    [_label setText:newModel.title];
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
