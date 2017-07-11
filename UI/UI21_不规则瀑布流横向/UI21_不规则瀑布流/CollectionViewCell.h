//
//  CollectionViewCell.h
//  UI21_不规则瀑布流
//
//  Created by dllo on 16/3/9.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Model;
@interface CollectionViewCell : UICollectionViewCell
@property (nonatomic, retain) UIImageView *imageV;
@property (nonatomic, retain) Model *model;
@end
