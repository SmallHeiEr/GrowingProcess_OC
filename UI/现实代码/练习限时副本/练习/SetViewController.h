//
//  SetViewController.h
//  练习
//
//  Created by dllo on 16/1/23.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Student;
@protocol SetViewControllerDelegate <NSObject>

- (void)setStudent:(Student *)student;
//- (void)reloadData;

@end
@interface SetViewController : UIViewController
@property (nonatomic, assign) id<SetViewControllerDelegate>delegate;
@end
