//
//  RegisterViewController.m
//  周末作业
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RegisterViewController.h"
#import "LFView.h"
#import "ViewController.h"
@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//  1.  桌面背景
    UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV3.image = [UIImage imageNamed:@"bg.png"];
    [self.view addSubview:imageV3];
    [imageV3 release];
//   2. 登录背景
    UIImageView *imageV4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    imageV4.image = [UIImage imageNamed:@"title_bg.png"];
    [self.view addSubview:imageV4];
    [imageV4 release];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(180, 0, 68, 50)];
    label.font = [UIFont fontWithName:@"Helvetica" size:25];
    label.text = @"注册";
    label.textColor = [UIColor whiteColor];
    [self.view addSubview:label];
    [label release];
//     邮箱地址
    LFView *view1 = [[LFView alloc]initWithFrame:CGRectMake(55, 100, self.view.frame.size.width - 50 * 2, 50)];
    //view1.backgroundColor = [UIColor redColor];
    view1.label.text = @"    邮箱地址";
    view1.Field.placeholder = @"   邮箱地址";
    view1.imageV1.image = [UIImage imageNamed:@"register_editor_upbg.png"];
    view1.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view1.tag = 10001;
    [self.view addSubview:view1];
    [view1 release];
    //   用户名
    LFView *view2 = [[LFView alloc]initWithFrame:CGRectMake(view1.frame.origin.x, view1.frame.origin.y + view1.frame.size.height, view1.frame.size.width, view1.frame.size.height)];
    //view2.backgroundColor = [UIColor redColor];
    view2.label.text = @"    用户名";
    view2.Field.placeholder = @"   用户名";
    view2.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view2.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view2.tag = 10002;
    [self.view addSubview:view2];
    [view2 release];
    //   3. 密码
    LFView *view3 = [[LFView alloc]initWithFrame:CGRectMake(view2.frame.origin.x, view2.frame.origin.y + view2.frame.size.height, view2.frame.size.width, view2.frame.size.height)];
    //view3.backgroundColor = [UIColor redColor];
    view3.label.text = @"    密码";
    view3.Field.placeholder = @"   4-12位字符";
    view3.Field.secureTextEntry = YES;
    view3.imageV1.image = [UIImage imageNamed:@"register_editor_midbg.png"];
    view3.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    view3.tag = 10003;
    [self.view addSubview:view3];
    [view3 release];
    //   4. 推荐人
    LFView *view4 = [[LFView alloc]initWithFrame:CGRectMake(view3.frame.origin.x, view3.frame.origin.y + view3.frame.size.height, view3.frame.size.width, view3.frame.size.height)];
    //view4.backgroundColor = [UIColor redColor];
    view4.label.text = @"    推荐人";
    view4.Field.placeholder = @"   推荐人";
    view4.imageV1.image = [UIImage imageNamed:@"register_editor_downbg.png"];
    view4.imageV2.image = [UIImage imageNamed:@"login_editor.png"];
    //view4.tag = @"10004";
    [self.view addSubview:view4];
    [view4 release];
    //   5. 立即注册背景
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 500, self.view.frame.size.width - 200, 50);
    [button1 setBackgroundImage:[UIImage imageNamed:@"register_btn_normal.png"] forState:UIControlStateNormal];
    [button1 setBackgroundImage:[UIImage imageNamed:@"register_btn_press.png"] forState:UIControlStateHighlighted];
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
- (void)button1Action:(UIButton *)sender
{
    LFView *viewA = [self.view viewWithTag:10001];
    LFView *viewB = [self.view viewWithTag:10002];
    LFView *viewC = [self.view viewWithTag:10003];
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    if (0 == viewA.Field.text.length || 0 == viewB.Field.text.length || 0 == viewC.Field.text.length)
    {
        UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"输入错误" message:@"请重新输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *alert2 = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
           
        }];
        [alert1 addAction:alert2];
        [self presentViewController:alert1 animated:YES completion:nil];
    }
//    如果你输入的用户已存在请重新输入
    else if (nil != [userD objectForKey:[@"邮箱"stringByAppendingString:viewC.Field.text]] || nil != [userD objectForKey:[@"用户"stringByAppendingString:viewC.Field.text]])
    {
        UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"你输入的用户已存在" message:@"请重新输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *alert2 = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alert1 addAction:alert2];
        [self presentViewController:alert1 animated:YES completion:nil];
    } else {
//        每个用户和邮箱都只对应一个密码
        
            [userD setObject:viewA.Field.text forKey:[@"邮箱"stringByAppendingString:viewC.Field.text]];
            [userD setObject:viewB.Field.text forKey:[@"用户"stringByAppendingString:viewC.Field.text]];
            [userD setObject:viewC.Field.text forKey:[@"密码"stringByAppendingString:viewC.Field.text]];
        [self dismissViewControllerAnimated:YES completion:^{
//            NSLog(@"%@", viewA.Field.text);
//            NSLog(@"%@", viewB.Field.text);
//            NSLog(@"%@", viewC.Field.text);
               }];
    }
}




- (void)button2Action:(UIButton *)sender
{
    UIAlertController *alertA = [UIAlertController alertControllerWithTitle:@"注意" message:@"是否返回到登录界面" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertB = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:^{
    }];
}];
    [alertA addAction:alertB];
    UIAlertAction *alertC = [UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    
    [alertA addAction:alertC];
    [self presentViewController:alertA animated:YES completion:nil];
    
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
