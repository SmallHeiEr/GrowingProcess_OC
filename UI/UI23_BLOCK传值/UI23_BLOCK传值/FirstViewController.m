//
//  FirstViewController.m
//  UI23_BLOCK传值
//
//  Created by dllo on 16/3/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
- (void)dealloc
{
#warning block传值3 － 为copy负责
    Block_release(_myBlock);
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    
    
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"变色" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction)]autorelease];
//    self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"变色" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction)]autorelease];
    
}
//- (void)getBlock:(void (^)(UIColor *))block;
//
//{
////    调的是第一个界面传过来的block；
////    self.myBlock = block;
//    self.myBlock = Block_copy(block);
//}

- (void)rightAction
{
#warning block传值1 在第二界面调用第一界面的block， 难点：不知道地址
    self.myBlock([UIColor greenColor]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
