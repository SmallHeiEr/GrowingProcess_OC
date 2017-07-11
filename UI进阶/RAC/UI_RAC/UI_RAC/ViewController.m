//
//  ViewController.m
//  UI_RAC
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa/ReactiveCocoa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1. RACSignal (它是一个类，创建信号量用的)
    //使用步骤：
//    1).创建信号量 (分为两种状态，冷信号和热信号)，
//    现在是冷信号
    RACSignal *signal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
        //3.发送消息
        [subscriber sendNext:@"打开"];
        
        
        return [RACDisposable disposableWithBlock:^{
//           当前信号量signal 使用完之后，要释放这个信号
            
        }];
    }];
    
    // 2. 订阅信号量 (热信号)
    [signal subscribeNext:^(id x) {
        
        NSLog(@"%@", x);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
