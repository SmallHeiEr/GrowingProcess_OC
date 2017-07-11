//
//  RootViewController.m
//  UI27_XIB
//
//  Created by dllo on 16/3/17.
//  Copyright © 2016年 dllo. All rights reserved.
//
#import "firstViewController.h"
#import "RootViewController.h"

@interface RootViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *field;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.field.delegate = self;
    
    
}
- (IBAction)buttonAction:(UIButton *)sender {
    
    self.label.text = self.field.text;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)next:(id)sender {
    firstViewController *firstVC = [[firstViewController alloc]init];
    [self presentViewController:firstVC animated:YES completion:nil];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];

    return YES;
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
