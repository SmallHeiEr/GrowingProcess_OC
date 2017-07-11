//
//  BoyTableViewCell.h
//  UI11--自定义cell
//
//  Created by dllo on 16/1/26.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BoyTableViewCell : UITableViewCell
@property (nonatomic, retain) UILabel *label;
- (void)setStr:(NSString *)str;
+ (CGFloat)getHeightWithStr:(NSString *)str;
@end
