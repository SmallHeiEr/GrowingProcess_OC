//
//  SetCollectionViewLayout.h
//  UI21_不规则瀑布流
//
//  Created by dllo on 16/3/9.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  SetCollectionViewLayoutDelegate<NSObject>

- (CGFloat)heightWithIndexPath:(NSIndexPath *)indexPath Width:(CGFloat)width;

@end




@interface SetCollectionViewLayout : UICollectionViewLayout
@property (nonatomic, assign) id<SetCollectionViewLayoutDelegate>delegate;
@property (nonatomic, assign) CGFloat lineSpacing;
@property (nonatomic, assign) CGFloat interitemSpacing;
@property (nonatomic, assign) UIEdgeInsets sectionInset;
@property (nonatomic, assign) NSInteger interitemCount;

@end
