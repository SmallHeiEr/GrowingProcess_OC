//
//  CollectionViewCell.m
//  UI20_UICollectionView
//
//  Created by dllo on 16/3/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell


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
    self.label = [[UILabel alloc]init];
    self.label.frame = CGRectMake(0, 200, 150, 40);
    [self.contentView addSubview:self.label];
    [_label release];
    UIImageView *image = [[UIImageView alloc]init];
    image.frame = CGRectMake(0, 0, 150, 200);
    image.image = [UIImage imageNamed:@"Q6NM}~DE4~R`D}61QD{2_@D.jpg"];
    [self.contentView addSubview:image];
    [image release];
}
-(void)layoutSubviews
{
    [super layoutSubviews];
//    self.label.frame = self.frame;
    
}





@end
