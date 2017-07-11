//
//  ViewController.m
//  UI_RACSignal传值
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1创建
    RACSubject *subject = [RACSubject subject];
    
//    2订阅 （可以订阅多个，不止一个）
    [subject subscribeNext:^(id x) {
        
        NSLog(@"1");
    }];
    
    [subject subscribeNext:^(id x) {
        
        NSLog(@"2");
    }];
    
    [subject subscribeNext:^(id x) {
        
        NSLog(@"3");
    }];
//    3.发送消息
    [subject sendNext:@"hhhh"];
    
//    释放信号量
    [subject sendCompleted];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
