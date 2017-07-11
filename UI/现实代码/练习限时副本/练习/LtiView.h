//
//  LtiView.h
//  练习
//
//  Created by dllo on 16/1/23.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LtiView : UIView<UITextFieldDelegate>
@property (nonatomic, retain)UILabel *label;
@property (nonatomic, retain)UITextField *field;
@property (nonatomic, retain)UIImageView *imageV1;
@property (nonatomic, retain)UIImageView *imageV2;
@end
