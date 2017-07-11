//
//  ViewController.m
//  UI_UITextView
//
//  Created by dllo on 16/3/31.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>
@property (nonatomic, retain) UITextView *textV;
@property (nonatomic, retain) UILabel *placeholderLabel;
@end

@implementation ViewController
- (void)dealloc
{
    [_placeholderLabel release];
    [_textV release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.textV = [[UITextView alloc]initWithFrame:CGRectMake(20, 80, self.view.frame.size.width - 40, 200)];
//    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.textV.delegate = self;
    [self.view addSubview:self.textV];
    self.textV.text = @"  UITextView文本视图相比与UITextField直观的区别就是UITextView可以输入多行文字并且可以滚动显示浏览全文。常见UITextView使用在APP的软件简介、内容详情显示、小说阅读显示、发表空间内容输入、说说文本框、评论文本框等。UITextView的使用有它本身的代理方法，也有继承于父类的方法。本身的方法有从开始编辑到结束编辑的整个过程的监听，继承的方法主要是继承于UIScrollView的方法，因为关于滚动的控制都属于UIScrollView的。";
    self.textV.textAlignment = NSTextAlignmentLeft;
    self.textV.textColor = [UIColor cyanColor];
    self.textV.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
//    是否允许编辑(=NO时，只能用来显示，可选择和拷贝)
    self.textV.editable = YES;
//    self.textV.scrollEnabled = NO;
    
    self.textV.autoresizingMask = UIViewAutoresizingFlexibleHeight;//自适应高度
    self.textV.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeSystem];
    addButton.frame = CGRectMake(20, 300, 50, 30);
    addButton.backgroundColor = [UIColor purpleColor];
    [addButton addTarget:self action:@selector(addButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:addButton];
    
   _placeholderLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, self.textV.frame.size.width, 20)];
    _placeholderLabel.backgroundColor = [UIColor clearColor];
    _placeholderLabel.font = self.textV.font;
    _placeholderLabel.text = @"";
    _placeholderLabel.textColor = [UIColor whiteColor];
    [self.textV addSubview:_placeholderLabel];
    [self.placeholderLabel release];
    
    
    
    //弹出菜单
    UIMenuItem *menuItem = [[UIMenuItem alloc]initWithTitle:@"分享到新浪微博" action:@selector(changeAction)];
    UIMenuController *menu = [UIMenuController sharedMenuController];
//    添加
    [menu setMenuItems:[NSArray arrayWithObject:menuItem]];
    [menuItem release];
    
    
    
    
}

- (void)addButtonAction
{
    self.textV.text = [self.textV.text stringByAppendingString:@"你好，蓝鸥"];
    NSRange range = NSMakeRange([self.textV.text length] - 1, 2);
    [self.textV scrollRangeToVisible:range];
}
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    _placeholderLabel.text = @"";
    NSLog(@"开始编辑");
}
- (void)textViewDidEndEditing:(UITextView *)textView
{
    if (self.textV.text.length == 0) {
        _placeholderLabel.text = @"请输入内容";
    } else {
        _placeholderLabel.text = @"";
    }
    NSLog(@"结束编辑");
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
     NSLog(@"将要开始编辑");
     return YES;
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView
{
     NSLog(@"将要完成编辑");
    
     return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
//    if ([text isEqualToString:@"\n"])
//    {
//        [textView resignFirstResponder];
//        return NO;
//    }
     NSLog(@"将要改变内容");
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView
{
    
     NSLog(@"内容完成改变");
}
- (void)textViewDidChangeSelection:(UITextView *)textView
{
     NSLog(@"内容被选中");
}
-(BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if(action == @selector(changeAction))
    {
        if(self.textV.selectedRange.length > 0)
            return YES;
    }
    return NO;
}
- (void)changeAction
{
    
}
//点击self.view
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
