//
//  ViewController.m
//  UI28_MD5
//
//  Created by dllo on 16/3/18.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "NSString+MD5.h"
#import "NSString+SHA1.h"
#import "GTMBase64.h"
//#import "GTMDefines.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    加密：为了保证客户端向服务器传递数据的安全性，要对传递的一些私密数据加密
//    密文：加密之后的字符（一般都是数字和字母）   明文
////    MD5加密
//    NSString *str = @"蓝鸥";
//    NSString *md5Str = [str stringFromMD5Lowercase];
////
//    NSLog(@"%@", md5Str);
////
//////    MD5加盐
////    //在明文一些指定的位置插入随机的字符串，然后再MD5加密
////     NSString *str1 = @"蓝";
////    NSMutableString *strings = [NSMutableString stringWithString:str1];
////    [strings insertString:@"鸥" atIndex:1];
////    NSString *md5String = [strings stringFromMD5Lowercase];
////    
////    NSLog(@"%@", md5String);
//
//////    MD5倒序
////    NSString *str2 = @"蓝";
////    NSString *md5string = [str2 stringFromMD5Lowercase];
////    NSString *header = [md5string substringFromIndex:5];
////    NSString *footer = [md5string substringToIndex:5];
////    NSString *result = [header stringByAppendingString:footer];
////    NSLog(@"%@", result);
//    
//    
////    傻1   SHA - 1
//    
//    NSString *sha1string = [NSString sha1:str];
//    NSLog(@"%@", sha1string);
//    
//    
//    
//    //Base64
//    //base64不是加密方式，为了防止数据传递过程中，UNICODE编码的缺失和错误。
//    NSString *baseString = [GTMBase64 encodeBase64String:str];
//    NSLog(@"%@", baseString);
//    
//    
//    NSString *decodeString = [GTMBase64 decodeBase64String:baseString];
//    NSLog(@"%@", decodeString);
//
//    //base64对date转码
//    
    NSData *imageDate = [NSData dataWithContentsOfFile:@"image1.jpg"];
////    压缩
////    参数1  图片
////    参数2  压缩系数 0 ～ 1   取值范围 0.3 ～ 0.7
//    
//    NSData *yasuoData = UIImageJPEGRepresentation([UIImage imageNamed:@"image1.jpg"], 0.5);
    
    UIImagePNGRepresentation([UIImage imageNamed:@"image1.jpg"]);
    
    NSData *baseData = [GTMBase64 encodeData:imageDate];
    NSLog(@"%@", baseData);
    NSData *backData = [GTMBase64 decodeData:baseData];
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 200)];
    imageV.image = [UIImage imageWithData:backData];
    [self.view addSubview:imageV];
//
    
    
  
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
