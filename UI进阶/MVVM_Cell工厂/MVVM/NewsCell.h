//
//  NewsCell.h
//  MVVM
//
//  Created by dllo on 16/4/19.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellFactory.h"
@interface NewsCell : CellFactory
@property (nonatomic , strong) UILabel *label;
- (void)setDateWithModel:(id)model;

@end
