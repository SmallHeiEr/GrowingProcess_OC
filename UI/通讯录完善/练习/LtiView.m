//
//  LtiView.m
//  练习
//
//  Created by dllo on 16/1/23.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "LtiView.h"

@implementation LtiView

- (void)dealloc
{   [_imageV1 release];
    [_imageV2 release];
    [_field release];
    [_label release];
    [super dealloc];
}
- (void)setup
{   self.imageV1 =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self addSubview:self.imageV1];
    [self.imageV1 release];
    self.imageV2 =[[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width / 3 - 23, 0, self.frame.size.width / 3 * 2 + 20, self.frame.size.height)];
    [self addSubview:self.imageV2];
    [self.imageV2 release];
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width / 3, self.frame.size.height)];
    
    [self addSubview:self.label];
    [self.label release];
    self.field = [[UITextField alloc]initWithFrame:CGRectMake(self.frame.size.width / 3, 0, self.frame.size.width / 3 * 2, self.frame.size.height)];
    self.field.clearsOnBeginEditing = YES;
    self.field.clearButtonMode = UITextFieldViewModeAlways;
    self.field.delegate = self;
    [self addSubview:self.field];
    [self.field release];
    
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //NSLog(@"%@", self.Field.text);
    [self.field resignFirstResponder];
    
    return YES;
}







@end
