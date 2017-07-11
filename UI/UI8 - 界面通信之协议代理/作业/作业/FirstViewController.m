//
//  FirstViewController.m
//  作业
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()<UITextFieldDelegate>


@end

@implementation FirstViewController
- (void)dealloc
{
    [_textF release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UITextField *field = [[UITextField alloc]initWithFrame:CGRectMake(50, 100, 200, 30)];
    //field.backgroundColor = [UIColor redColor];
    field.delegate = self;
    field.clearButtonMode = UITextFieldViewModeAlways;
//    self.field.placeholder = @"改变上一页的文本内容";
    field.clearsOnBeginEditing = YES;
    field.text = self.textF;
    field.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:field];
    [field release];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 200, 50, 50);
    [button setTitle:@"上一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
- (void)buttonAction:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)changeTextField:(NSString *)textField
{
    self.textF = textField;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
