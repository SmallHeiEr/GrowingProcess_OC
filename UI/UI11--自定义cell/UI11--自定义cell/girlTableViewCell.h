//
//  girlTableViewCell.h
//  UI11--自定义cell
//
//  Created by dllo on 16/1/26.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface girlTableViewCell : UITableViewCell
@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UIImageView *imageV;
- (void)setImageWithStr:(NSString *)str;
@end
