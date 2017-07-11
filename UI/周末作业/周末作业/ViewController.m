//
//  ViewController.m
//  周末作业
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "LFView.h"
#import "RegisterViewController.h"
#import "EnterViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
//   1. 屏幕背景
    UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV1.image = [UIImage imageNamed:@"bg.png"];
    [self.view addSubview:imageV1];
    [imageV1 release];
//   2. 登录背景
    UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    imageV2.image = [UIImage imageNamed:@"title_bg.png"];
    [self.view addSubview:imageV2];
    [imageV2 release];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(180, 0, 68, 50)];
    label.font = [UIFont fontWithName:@"Helvetica" size:25];
    label.text = @"登录";
    label.textColor = [UIColor whiteColor];
    [self.view addSubview:label];
    [label release];
//   3. 账号背景
    LFView *view1 = [[LFView alloc]initWithFrame:CGRectMake(55, 100, self.view.frame.size.width - 50 * 2, 50)];
   //view1.backgroundColor = [UIColor redColor];
    view1.label.text = @"      账号";
    view1.Field.placeholder = @"   邮箱地址或用户名";
    view1.imageV1.image = [UIImage imageNamed:@"register_editor_upbg.png"];
    view1.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view1.tag = 1001;
    [self.view addSubview:view1];
    [view1 release];
//   4. 密码背景
    LFView *view2 = [[LFView alloc]initWithFrame:CGRectMake(view1.frame.origin.x, view1.frame.origin.y + view1.frame.size.height, view1.frame.size.width, view1.frame.size.height)];
    //view2.backgroundColor = [UIColor redColor];
    view2.label.text = @"      密码";
    view2.Field.placeholder = @"   4-12位字符";
    view2.Field.secureTextEntry = YES;
    view2.imageV1.image = [UIImage imageNamed:@"register_editor_downbg.png"];
    view2.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view2.tag = 1002;
    [self.view addSubview:view2];
    [view2 release];
//   5. 立即登录背景
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 300, self.view.frame.size.width - 200, 50);
    [button1 setBackgroundImage:[UIImage imageNamed:@"login_btn_normal.png"] forState:UIControlStateNormal];
    [button1 setBackgroundImage:[UIImage imageNamed:@"login_btn_press.png"] forState:UIControlStateHighlighted];
     [button1 addTarget:self action:@selector(button1Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
//   6. 右上角按钮
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(350, 0, 40, 40);
    [button2 setBackgroundImage:[UIImage imageNamed:@"login_title_btn_normal.png"] forState:UIControlStateNormal];
    [button2 setBackgroundImage:[UIImage imageNamed:@"login_title_btn_press.png"] forState:UIControlStateHighlighted];
    [button2 addTarget:self action:@selector(button2Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];

    
    
    
}

- (void)button2Action:(UIButton *)sender
{
    UIAlertController *alertA = [UIAlertController alertControllerWithTitle:@"注册" message:@"是否注册" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertB = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        RegisterViewController *registerVC = [[RegisterViewController alloc]init];
            [self presentViewController:registerVC animated:YES completion:^{
                NSLog(@"切换完成会执行此处");
            }];
            [registerVC release];
    }];
    [alertA addAction:alertB];
    UIAlertAction *alertC = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
}];
    
    [alertA addAction:alertC];
    [self presentViewController:alertA animated:YES completion:nil];
    
}

- (void)button1Action:(UIButton *)sender
{   LFView *view1 = [self.view viewWithTag:1001];
    LFView *view2 = [self.view viewWithTag:1002];
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
//    self.userD.
    
    NSLog(@"%@", [userD objectForKey:@"密码"]);
    NSLog(@"%@", [userD objectForKey:@"用户名"]);
    NSLog(@"%@", [userD objectForKey:@"邮箱地址"]);
//    如果用户或邮箱对应的密码正确，则进入
    if (([userD objectForKey:[@"邮箱"stringByAppendingString:view2.Field.text]] == view1.Field.text && [userD objectForKey:[@"密码"stringByAppendingString:view2.Field.text]] == view2.Field.text) || ([userD objectForKey:[@"用户"stringByAppendingString:view2.Field.text]] == view1.Field.text && [userD objectForKey:[@"密码"stringByAppendingString:view2.Field.text]] == view2.Field.text)) {
        EnterViewController *enterVC = [[EnterViewController alloc]init];
        [self presentViewController:enterVC animated:YES completion:^{
            
            NSLog(@"切换完成会执行此处");
            
        }];
        [enterVC release];
    }
    else {
        UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"输入错误" message:@"请重新输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *alert2 = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alert1 addAction:alert2];
        [self presentViewController:alert1 animated:YES completion:nil];

    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
