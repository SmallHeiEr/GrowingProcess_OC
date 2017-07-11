//
//  LFView.m
//  周末作业
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "LFView.h"

@implementation LFView
- (void)dealloc
{   [_imageV1 release];
    [_imageV2 release];
    [_Field release];
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
        self.Field = [[UITextField alloc]initWithFrame:CGRectMake(self.frame.size.width / 3, 0, self.frame.size.width / 3 * 2, self.frame.size.height)];
    self.Field.clearsOnBeginEditing = YES;
    self.Field.clearButtonMode = UITextFieldViewModeAlways;
    self.Field.delegate = self;
    [self addSubview:self.Field];
    [self.Field release];
    
}
- (instancetype)initWithFrame:(CGRect)frame
{
   self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    //NSLog(@"%@", self.Field.text);
//    [self.Field resignFirstResponder];
//    
//    return YES;
//}
@end
