//
//  ViewController.m
//  自动布局
//
//  Created by dllo on 16/3/18.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "KeychainItemWrapper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    
//    
//    UIView *view1 = [[UIView alloc]init];
//    view1.backgroundColor = [UIColor cyanColor];
//    [self.view addSubview:view1];
//    
//    
//    
//    
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        make.top.offset(300);
//        make.left.offset(50);
////        make.size.mas_equalTo(CGSizeMake(200, 200));
//        make.bottom.offset(-400);
//        make.right.offset(-200);
//        
//    }];
//    
//    UIView *view2 = [[UIView alloc]init];
//    view2.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:view2];
//    
//    
//    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        make.top.left.mas_equalTo(view1).width.offset(30);
////        make.left.mas_equalTo(view1).width.offset(30);
//        make.size.mas_equalTo(CGSizeMake(200, 200));
//        make.width.equalTo(view1);
//    }];
//    
//    
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"yaochichuan" accessGroup:nil];
    
    [wrapper setObject:@"你好" forKey:(id) kSecAttrAccount];
    [wrapper setObject:@"123456" forKey:(id)kSecValueData];
//    解密
    NSString *name = [wrapper objectForKey:(id)kSecAttrAccount];
    
    NSString *pass = [wrapper objectForKey:(id)kSecValueData];
    
    NSLog(@"name=%@, pass=%@", name, pass);
//  想钥匙串中写入数据的成本很高，所以我们不会频繁写入。钥匙串不适合用来存储经常改变的敏感数据
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
