//
//  ViewController.m
//  UI23_BLOCK传值
//
//  Created by dllo on 16/3/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    
//    void (^block)(int a) = ^(int a) {
//        NSLog(@"%d", a + 3);
//    };
//
//    
//    block(3);
    
    //定义一个block， 返回两个参数的和
    
//    NSInteger (^sumBlock)(NSInteger, NSInteger) = ^(NSInteger a, NSInteger b) {
//        
//        return a + b;
//    };
//    
//    NSInteger ret = sumBlock(3, 5);
//    NSLog(@"%ld", ret);
//    
////    定义一个block， 将页面的背景颜色改变成参数指定颜色
//    
////    int (^block)(int , int ) = ^(int a, int b) {
////        
////        return a + b;
////        
////    };
//    void (^colorBlock)(UIColor *) = ^(UIColor *a) {
//        self.view.backgroundColor = a;
//    };
//    
//    colorBlock([UIColor blueColor]);
    
    
    
    
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"下页" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction)]autorelease];
    
    
}
- (void)rightAction
{
    FirstViewController *first = [[FirstViewController alloc]init];
    
 #warning block传值5－ 防止self在block中引用计数增加
   
    //__block声明，不关心引用计数
    __block ViewController *vc = self;
    NSLog(@"%ld", [self retainCount]);
    
    
#warning block传值4－ 属性传值，传递第二界面要吊用的block地址（顺便定义block）

//    void (^colorBlock)(UIColor *) = ^(UIColor *a) {
//        self.view.backgroundColor = a;
//    };
////    [frist getBlock:colorBlock];
//    first.myBlock = colorBlock;
    [first setMyBlock:^(UIColor *myColor) {
        vc.view.backgroundColor = myColor;
    }];
    NSLog(@"%ld", [self retainCount]);
    [self.navigationController pushViewController:first animated:YES];

    [first release];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
