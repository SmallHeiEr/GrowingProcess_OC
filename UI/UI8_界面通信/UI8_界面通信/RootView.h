//
//  RootView.h
//  UI8_界面通信
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootView : UIView
@property (nonatomic, retain)UILabel *label;
@property (nonatomic, retain)NSString *content;





- (void)setLabelVal:(NSString *)content;
@end
