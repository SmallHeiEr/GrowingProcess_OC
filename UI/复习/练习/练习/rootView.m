//
//  rootView.m
//  练习
//
//  Created by dllo on 16/2/24.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "rootView.h"

@implementation rootView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setGet];
    }
    return self;
}
- (void)setGet
{
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width / 3, self.frame.size.height)];
    [self addSubview:self.label];
    [self.label release];
    self.field = [[UITextField alloc]initWithFrame:CGRectMake(self.label.frame.size.width, 0, self.frame.size.width / 3 * 2, self.frame.size.height)];
    self.field.clearsOnBeginEditing = YES;
    self.field.clearButtonMode = UITextFieldViewModeAlways;
    self.field.delegate = self;

    [self addSubview:self.field];
    [self.field release];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.field resignFirstResponder];
    
    return YES;
}





@end
