//
//  ViewController.m
//  扩展
//
//  Created by dllo on 16/3/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    [NSString stringWithFormat:@"http://m.zhibo8.cc/news/android/json/zuqiu/2016-03-21/56efdd14a939b.json?aabbccddeeff=1458563705234"];
}
//图片模糊化处理
+(UIImage *)scale:(UIImage *)image toSize:(CGSize)size

{
    
    UIGraphicsBeginImageContext(size);
    
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaledImage;
    
}
//如何限制UITextField输入长度（监听textField文本变化的事件）
//实现UITextFieldDelegate协议
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    int kMaxLength = 11;
    NSInteger strLength = textField.text.length - range.length + string.length;
    //输入内容的长度 - textfield区域字符长度（一般=输入字符长度）+替换的字符长度（一般为0）
    return (strLength <= kMaxLength);
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
