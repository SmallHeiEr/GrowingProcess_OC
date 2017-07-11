//
//  CollectionViewCell.m
//  UI21_不规则瀑布流
//
//  Created by dllo on 16/3/9.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "CollectionViewCell.h"
#import "UIImageView+WebCache.h"
#import "Model.h"
@implementation CollectionViewCell
- (void)dealloc
{
    [_model release];
    [_imageV release];
    [super dealloc];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubviews];
    }
    return self;
}
- (void)createSubviews
{
    self.imageV = [[UIImageView alloc]init];
//    self.imageV = [[UIImageView alloc]init];
    [self.contentView addSubview:self.imageV];
    [self.imageV release];
    
    
}

- (void)setModel:(Model *)model
{
    if (_model != model) {
        [_model release];
        _model = [model retain];
    }
    [self.imageV sd_setImageWithURL:[NSURL URLWithString:self.model.thumbURL] placeholderImage:[UIImage imageNamed:@"Q6NM}~DE4~R`D}61QD{2_@D.jpg"]];
    
    
    
}


//当frame发生变化时触发， 在applyLayoutAttributes之后触发
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.imageV.frame = self.contentView.bounds;
}
//布局时触发，，，，一定触发
- (void)applyLayoutAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
    [super applyLayoutAttributes:layoutAttributes];
}
@end
