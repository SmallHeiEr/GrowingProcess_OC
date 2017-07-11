//
//  ViewController.m
//  NSMutableString
//
//  Created by dllo on 16/3/23.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *str = @"即使都会疯狂拉家带口父母从那时，回复 iu 了妇女科技时代相比年初风口浪尖啊收到回复；lasdfjasljkdnklfw家的发生；劳动法离开那我看今日发货；拉萨大家非常快乐；啊是坎德莫夫；拉完空间发";
    NSMutableAttributedString *arrStr = [[NSMutableAttributedString alloc] initWithString:str];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(50, 100, 300, 200);
    label.numberOfLines = 0;
    label.attributedText = arrStr;
    label.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:label];
    
    [arrStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:25] range:NSMakeRange(0, 2)];
//    arrStr addAttributes:<#(nonnull NSDictionary<NSString *,id> *)#> range:<#(NSRange)#>
//    
//    arrStr addAttribute:<#(nonnull NSString *)#> value:<#(nonnull id)#> range:<#(NSRange)#>
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
