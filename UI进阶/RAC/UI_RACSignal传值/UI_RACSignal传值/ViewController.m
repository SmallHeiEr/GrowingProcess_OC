//
//  ViewController.m
//  UI_RACSignal传值
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

#import "ReactiveCocoa.h"
@interface ViewController ()
#pragma mark - 2.声明一个id属性 （用于保存信号量）
@property (nonatomic, strong) id target;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#pragma mark - 1.创建信号量，并订阅

    RACSignal *signal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
#pragma mark - 3.我们把subscriber传递到B页面就可以在B页面发送消息，在下面订阅信号那里就可以接收了
        
        //我们要把subscriber变量传递到B页面，但是在这个Block块里没法实现跳转，所以我们需要用_target变量接收一下，然后再别的方法里面使用这个_target变量
        _target = subscriber;
        
        
        
        return [RACDisposable disposableWithBlock:^{
           NSLog(@"要被释放");
           
       }];
        
    }];
    
    [signal subscribeNext:^(id x) {
        
        NSLog(@"%@", x);
        
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
#pragma mark - 3.1 把block里面的subscriber 传到B页面（并跳转）
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    firstVC.target = _target;
    [self presentViewController:firstVC animated:YES completion:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
