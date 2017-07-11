//
//  DetailViewController.m
//  练习
//
//  Created by dllo on 16/1/22.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DetailViewController.h"
#import "LtiView.h"
#import "Student.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV3.image = [UIImage imageNamed:@"bg.png"];
    
    [self.view addSubview:imageV3];
    [imageV3 release];
    
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(90, 70, self.view.frame.size.width - 90 * 2, self.view.frame.size.width - 90 * 2)];
    image.image = [UIImage imageNamed:@"image0.jpg"];
    image.image = [UIImage imageNamed:self.stu.picture];
    [self.view addSubview:image];
    [image release];
    
    self.navigationItem.title = @"详细信息";
    
    
    LtiView *view1 = [[LtiView alloc]initWithFrame:CGRectMake(55, 300, self.view.frame.size.width - 50 * 2, 50)];
    view1.label.text = @"    Name";
    view1.field.text = self.stu.name;;
    view1.tag = 10001;
    view1.imageV1.image = [UIImage imageNamed:@"register_editor_upbg.png"];
    view1.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view1.imageV2.alpha = 0;
    view1.field.enabled = NO;
    view1.field.clearButtonMode = UITextFieldViewModeNever;
    [self.view addSubview:view1];
    [view1 release];
    
    LtiView *view2 = [[LtiView alloc]initWithFrame:CGRectMake(view1.frame.origin.x, view1.frame.origin.y + view1.frame.size.height, view1.frame.size.width, view1.frame.size.height)];
    view2.label.text = @"    Gender";
    view2.field.text = self.stu.gender;
    view2.tag = 10002;
    view2.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view2.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view2.imageV2.alpha = 0;
    view2.field.enabled = NO;
    view2.field.clearButtonMode = UITextFieldViewModeNever;
    [self.view addSubview:view2];
    [view2 release];
    LtiView *view3 = [[LtiView alloc]initWithFrame:CGRectMake(view2.frame.origin.x, view2.frame.origin.y + view2.frame.size.height, view2.frame.size.width, view2.frame.size.height)];
    view3.label.text = @"    Age";
    view3.field.text = self.stu.age;
    view3.tag = 10003;
    view3.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view3.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view3.imageV2.alpha = 0;
    view3.field.enabled = NO;
    view3.field.clearButtonMode = UITextFieldViewModeNever;
    [self.view addSubview:view3];
    [view3 release];
    LtiView *view4 = [[LtiView alloc]initWithFrame:CGRectMake(view3.frame.origin.x, view3.frame.origin.y + view3.frame.size.height, view3.frame.size.width, view3.frame.size.height)];
    view4.label.text = @"    phone";
    view4.field.text = self.stu.phoneNumber;
    view4.tag = 10004;
    view4.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view4.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view4.imageV2.alpha = 0;
    view4.field.enabled = NO;
    view4.field.clearButtonMode = UITextFieldViewModeNever;
    [self.view addSubview:view4];
    [view4 release];
    LtiView *view5 = [[LtiView alloc]initWithFrame:CGRectMake(view4.frame.origin.x, view4.frame.origin.y + view4.frame.size.height, view4.frame.size.width, view4.frame.size.height)];
    view5.label.text = @"    Hobby";
    view5.field.text = self.stu.hobby;
    view5.tag = 10005;
    view5.field.enabled = NO;
    view5.field.clearButtonMode = UITextFieldViewModeNever;
    view5.imageV1.image = [UIImage imageNamed:@"register_editor_downbg.png"];
    view5.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view5.imageV2.alpha = 0;
    [self.view addSubview:view5];
    [view5 release];

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
