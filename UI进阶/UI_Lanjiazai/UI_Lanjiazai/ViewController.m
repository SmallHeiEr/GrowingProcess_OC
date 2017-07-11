//
//  ViewController.m
//  UI_Lanjiazai
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong)UIView *lanView;
@property (nonatomic, strong)UIView *view;
@end

@implementation ViewController

//懒加载是基于get方法的，

//1). 收到内存警告，要删除一些重建的View，需要懒加载
//2). 防止重复创建的问题（cell里面创建view）
//3). 处理耦合度过高的问题，不用考虑代码的执行顺序
- (UIView *)lanView
{
    if (_lanView == nil) {
        self.lanView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 314, 314)];
        self.view.backgroundColor = [UIColor cyanColor];
    }
    return _lanView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.lanView];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
