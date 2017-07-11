//
//  ViewController.m
//  UI2--UICintrol
//
//  Created by dllo on 16/1/13.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
//    显示文字控件
//    学习一个新类
//    1.先看继承与谁
//    2.先看有没有自己的初始化方法，一般在第一个属性上面。没有的话用父类的；
//    3.再看独有的功能属性
//    
//    显示类对象的基础创建一般是：
//    1， 创建对象，设置坐标
//    2，添加到俯视图上
//    3，管理引用计数（MRC）
//    4，定制自己的风格（设置自己的属性）
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 70, 40)];
//    设置文字内容
    label1.text = @"龙龙";
//    背景色
    //label1.backgroundColor = [UIColor blueColor];
//    粗体并设置字体大小
    //label1.font = [UIFont boldSystemFontOfSize:23];
//    Helvetica-Bold ---黑体加粗
    label1.font = [UIFont fontWithName:@"Helvetica" size:20];
//    行数--默认0，自适应行数
//label1.numberOfLines = 0;
//    阴影偏移
    //label1.shadowOffset = CGSizeMake(1, 2);
//    阴影颜色
   // label1.shadowColor = [UIColor blackColor];
    
    [self.view addSubview:label1];
    [label1 release];
    
//    文本输入框
//    commamd + k 调出键盘
//    command + shift + k 可关联物理键盘
    UITextField *field1 = [[UITextField alloc] initWithFrame:CGRectMake(label1.frame.origin.x + label1.frame.size.width + 10, label1.frame.origin.y, label1.frame.size.width + 100, label1.frame.size.height)];
    field1.backgroundColor = [UIColor blueColor];
    
//    常用读取用户输入内容
//    也可做类似保存账户的显示方式
    
    field1.text = @"1102983823";
//    提示文本内容
    field1.placeholder = @"请输入龙龙的属性";
//    清除按钮的出现时机
    field1.clearButtonMode = UITextFieldViewModeAlways;
//    隐藏输入信息，（密文输入）
    field1.secureTextEntry = YES;
//    是否允许输入
    //field1.enabled = NO;
//    开始编辑时清除内容
    //field1.clearsOnBeginEditing = YES;
    //键盘样式
    //field1.keyboardType = UIKeyboardTypeNumberPad;
//    return按键的样式
    field1.returnKeyType = UIReturnKeyGo;
//    边框样式
    field1.borderStyle = UITextBorderStyleRoundedRect;
// 设置代理人:::::::::::::::::::::::::::::::::::::::::
    field1.delegate = self;
    [self.view addSubview:field1];
    [field1 release];
    
    
    //按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 300, 100, 50);
//    UIControlStateNormal：正常状态下 UIControlStateHighlighted：高亮状态下
    [button setTitle:@"点我" forState: UIControlStateNormal];
    [button setTitle:@"真点啊" forState: UIControlStateSelected];
//    设置标题颜色
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
//    设置标题字体
    button.titleLabel.font = [UIFont boldSystemFontOfSize:23];
//    重要方法：给button注册处理方法
//    UIControlEventTouchUpInside： 按下并抬起时生效
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
//    设置背景图片
//    [button setBackgroundImage:[UIImage imageNamed:@"BtnOn@2x.png"] forState:UIControlStateNormal];
//    设置前景颜色
//    需要渲染
//    [button setImage:[UIImage imageNamed:@"BtnOn@2x.png"] forState:UIControlStateNormal];
//    前景图片和背景图片的区别：
//    1 ，前景图保留图片原有尺寸，背景图填充到button中
//    2， 前景图片将标题挤到右边，背景图片文字在图上
//    3， 前景图片多应用于显示很小但地盘很大的场景
    [button setBackgroundImage:[UIImage imageNamed:@"BtnOff@2x.png"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"BtnOn@2x.png"] forState:UIControlStateSelected];
    
    
    
    
    
    
    [self.view addSubview:button];
    
    
    
    
    //图片
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV.image = [UIImage imageNamed:@"BackGround.png"];
    
   
    [self.view addSubview:imageV];
    [imageV release];
    
    
    
   
    NSMutableArray *imageArr = [NSMutableArray array];
    for (NSInteger i = 0; i < 18; i++) {
//        拼接每张图片名字
//        注意：1.图片起始序号
//             2. 序号格式（1/01）{%02ld,i + 1} 占两位不足补0
        NSString *imageName = [NSString stringWithFormat:@"flower%ld.tiff", i + 1];
//        创建每个图片对象
        UIImage *image = [UIImage imageNamed:imageName];
//        将图片对象填进数组
        [imageArr addObject:image];
        
    }
//        创建花图片
     UIImageView *flowerV = [[UIImageView alloc]initWithFrame:CGRectMake(50, 60, 100, 100)];
//    播放组图
//    imageV.animationDuration持续时间
//    imageV.animationImages重复次数
//    为播放时显示
    flowerV.image = [UIImage imageNamed:@"flower1.tiff"];
   
    flowerV.animationImages = imageArr;
    //播放持续时间
    flowerV.animationDuration = 1.5;
//    比方重复次数--默认为0，无限次循环             flowerV.animationRepeatCount = 0;
    [self.view addSubview:flowerV];
    [flowerV release];
    
//    开始             开始前改变参数，，，，，开始后改变的话需在此调用开始
    [flowerV startAnimating];
//    停止
    //[flowerV stopAnimating];
    
    
    
    
    
    
    
    
    
    
}
- (void)buttonAction:(UIButton *)sender
{
    NSLog(@"long");
    sender.selected = !sender.selected;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
//    回收键盘--取消第一响应者
    [textField resignFirstResponder];
    NSLog(@"用户输入的内容为：%@", textField.text);
    return YES;
//    - (BOOL)canBecomeFirstResponder;    // default is NO
//    - (BOOL)becomeFirstResponder;
//    
//    - (BOOL)canResignFirstResponder;    // default is YES
//    - (BOOL)resignFirstResponder;成为第一响应者-可用作切换输入框
//    
//    - (BOOL)isFirstResponder;判断是否是第一响应者
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
