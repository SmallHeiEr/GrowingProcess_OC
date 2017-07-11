//
//  SetViewController.m
//  练习
//
//  Created by dllo on 16/1/23.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SetViewController.h"
#import "Student.h"
#import "LtiView.h"
@interface SetViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (nonatomic, retain) UIButton *button;
@property (nonatomic, retain) UIImage *image;
@end

@implementation SetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV3.image = [UIImage imageNamed:@"bg.png"];
    
    [self.view addSubview:imageV3];
    [imageV3 release];
    LtiView *view1 = [[LtiView alloc]initWithFrame:CGRectMake(55, 300, self.view.frame.size.width - 50 * 2, 50)];
    view1.label.text = @"    Name";
    view1.field.placeholder = @"   请输入名字";
    view1.tag = 10001;
    view1.imageV1.image = [UIImage imageNamed:@"register_editor_upbg.png"];
    view1.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    [self.view addSubview:view1];
    [view1 release];
    LtiView *view2 = [[LtiView alloc]initWithFrame:CGRectMake(view1.frame.origin.x, view1.frame.origin.y + view1.frame.size.height, view1.frame.size.width, view1.frame.size.height)];
    view2.label.text = @"    Gender";
    view2.field.placeholder = @"   请输入性别";
    view2.tag = 10002;
    view2.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view2.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    [self.view addSubview:view2];
    [view2 release];
    LtiView *view3 = [[LtiView alloc]initWithFrame:CGRectMake(view2.frame.origin.x, view2.frame.origin.y + view2.frame.size.height, view2.frame.size.width, view2.frame.size.height)];
    view3.label.text = @"    Age";
    view3.field.placeholder = @"   请输入年龄";
    view3.tag = 10003;
    view3.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view3.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    [self.view addSubview:view3];
    [view3 release];
    LtiView *view4 = [[LtiView alloc]initWithFrame:CGRectMake(view3.frame.origin.x, view3.frame.origin.y + view3.frame.size.height, view3.frame.size.width, view3.frame.size.height)];
    view4.label.text = @"    Hobby";
    view4.field.placeholder = @"   请输入爱好";
    view4.tag = 10004;
    view4.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view4.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    [self.view addSubview:view4];
    [view4 release];
    LtiView *view5 = [[LtiView alloc]initWithFrame:CGRectMake(view4.frame.origin.x, view4.frame.origin.y + view4.frame.size.height, view4.frame.size.width, view4.frame.size.height)];
    view5.label.text = @"     phone";
    view5.field.placeholder = @"   请输入电话";
    view5.tag = 10005;
    view5.imageV1.image = [UIImage imageNamed:@"register_editor_downbg.png"];
    view5.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    [self.view addSubview:view5];
    [view5 release];
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(100, 70, self.view.frame.size.width - 200, self.view.frame.size.width - 200);
    [self.button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.button setBackgroundImage:[UIImage imageNamed:@"bg.png"] forState:UIControlStateNormal];
   
//    button.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.button];
     [self.button setTitle:@"点击获取图片" forState: UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarAction)]autorelease];
    
    
    
}
- (void)buttonAction
{
    //访问相册选取图片
    UIImagePickerController *picherC = [[UIImagePickerController alloc]init];
    [self presentViewController:picherC animated:YES completion:nil];
    picherC.allowsEditing = YES;
    picherC.delegate = self;
    //    picherC.mediaTypes = YES;
    [picherC release];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    self.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.button setBackgroundImage:self.image forState:UIControlStateNormal];
    [self.button setTitle:nil forState: UIControlStateNormal];
    
}
- (void)rightBarAction
{
    LtiView *viewA = [self.view viewWithTag:10001];
    LtiView *viewB = [self.view viewWithTag:10002];
    LtiView *viewC = [self.view viewWithTag:10003];
    LtiView *viewD = [self.view viewWithTag:10004];
    LtiView *viewE = [self.view viewWithTag:10005];
   
    Student *stu = [[Student alloc]init];
    stu.name = viewA.field.text;
    stu.gender = viewB.field.text;
    stu.age = viewC.field.text;
    stu.hobby = viewD.field.text;
    stu.phoneNumber = viewE.field.text;
    stu.picture = self.image;
//    stu.picture = self.button.backgroundImage;
    [self.delegate setStudent:stu];
    [stu release];
//    [self.delegate reloadData];
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
