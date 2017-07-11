//
//  LoginView.m
//  作业
//
//  Created by dllo on 16/1/14.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "LoginView.h"
#import "LoginViewController.h"
@implementation LoginView
- (void)dealloc
{
    [_label release];
    [_field release];
    [super dealloc];
}
- (void)createSubviews
{
    
   //self.backgroundColor = [UIColor whiteColor];
self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width / 3, self.frame.size.height)];
    self.label.backgroundColor = [UIColor blueColor];
[self addSubview:self.label];
[self release];
    self.field = [[UITextField alloc] initWithFrame:CGRectMake(self.frame.size.width / 3, 0, self.frame.size.width / 3 * 2, self.frame.size.height)];
    
    self.field.clearButtonMode = UITextFieldViewModeAlways;
    self.field.clearsOnBeginEditing = YES;
    self.field.delegate = self;
     self.field.backgroundColor = [UIColor blueColor];
    [self addSubview:self.field];
    [self.field release];
 }
- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:(CGRect)frame];
    if (self) {
        [self createSubviews];
    }    return self;
    }
- (BOOL)textFieldShouldReturn:(UITextField *)textField
    {
        [self.field resignFirstResponder];
        return YES;
    }
    
  

@end
