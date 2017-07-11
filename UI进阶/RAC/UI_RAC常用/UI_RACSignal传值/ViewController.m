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
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
//    1.替换button的target-Action
    button.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        NSLog(@"我被点击了：%@", input);
        return [RACSignal empty];
    }];
    
    UIScrollView *scrollV = [[UIScrollView alloc] initWithFrame:self.view.frame];
    scrollV.backgroundColor = [UIColor blueColor];
    scrollV.contentSize = CGSizeMake(0, 1000);
    [self.view addSubview:scrollV];
    
//    2.替换KVO
    [RACObserve(scrollV, contentOffset) subscribeNext:^(id x) {
        NSLog(@"%@", x);
        
    }];
//    3.KVO判断
    [[RACObserve(scrollV, contentOffset) filter:^BOOL(id value) {
       
        return [value CGPointValue].y > 100 ? YES : NO;
        
    }] subscribeNext:^(id x) {
       //在上面block返回YES的时候，这里才会继续订阅（触发）
        NSLog(@"我的偏移量超过500：%@", x);
        
    }];
    
//    4.替换某些系统类的协议方法
    UITextField *text = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 150, 50)];
    text.backgroundColor = [UIColor cyanColor];
    [scrollV addSubview:text];
    
       //    监听text改变的时候
//    [text.rac_textSignal subscribeNext:^(id x) {
//        NSLog(@"%@", x);
//        
//    }];
    
//    5.监听多个
    UITextField *text2 = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 150, 50)];
    text2.backgroundColor = [UIColor cyanColor];
    [scrollV addSubview:text2];
    
//    当你两个textField都有值，我让scrollView才可以滚动
    
//    第一个参数是数组类型，里面放置你要监听的信号量
//    第二个参数是你要监听的属性，在这个block块里调用的变量
    RAC(scrollV, scrollEnabled) = [RACSignal combineLatest:@[text.rac_textSignal, text2.rac_textSignal] reduce:^id(NSString *strOne, NSString *strTwo){
        
//        if (strOne.length > 0 && strTwo.length > 0) {
//            return @(YES);
//        } else {
//            return @(NO);
//        }
        return strOne.length > 0 && strTwo.length > 0 ? @(YES) : @(NO);

//         NSLog(@"%@", x);
    }];
    
//   6.解释一下2个宏定义
    //RAC宏：将一个对象的属性和信号量绑定
    //RACObserve宏：监听一个对象的属性产生一个信号量
    
    //    作用，将2里的值给1（2中输入文字，当1被激活的时候赋值）
    RAC(text, text) = RACObserve(text2, text);
    
//    text2.text = @"ssss";
//    7.替换UIAlertView 的协议方法
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"wo" message:@"ss" delegate:nil cancelButtonTitle:@"quxiao" otherButtonTitles:@"queding", nil];
    [alert.rac_buttonClickedSignal subscribeNext:^(id x) {
        
        NSLog(@"%@", x);
    }];
    [alert show];
    
    
//    8.监听系统的方法（没有返回值）
    [[self rac_signalForSelector:@selector(viewDidAppear:)] subscribeNext:^(id x) {
        NSLog(@"加载完成");
        
    }];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
