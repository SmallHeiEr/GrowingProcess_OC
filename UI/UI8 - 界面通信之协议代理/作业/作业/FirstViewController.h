//
//  FirstViewController.h
//  作业
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FirstViewControllerDelegate <NSObject>

//- (void)

@end

@interface FirstViewController : UIViewController
@property (nonatomic, assign)id<FirstViewControllerDelegate>delegate;
@property (nonatomic, retain)NSString *textF;
- (void)changeTextField:(NSString *)textField;

@end
