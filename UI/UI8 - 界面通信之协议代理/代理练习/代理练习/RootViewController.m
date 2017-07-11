//
//  RootViewController.m
//  代理练习
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"
@interface RootViewController ()<FirstViewControolDelegate>
@property (nonatomic, retain)FirstViewController *firstVC;
@end

@implementation RootViewController
- (void)dealloc
{
    [_firstVC release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]initWithTitle:@"下一页" style: UIBarButtonItemStylePlain target:self action:@selector(rightBarAction:)]autorelease];
   
    
    
    
 }
- (void)rightBarAction:(UIBarButtonItem *)sender
{
    self.firstVC = [[FirstViewController alloc]init];
    self.firstVC.delegate = self;
    [self.firstVC changeColor1:[UIColor greenColor]];
    [self.navigationController pushViewController:self.firstVC animated:YES];
    [self.firstVC release];
}
- (void)changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}

//- (void)buttonAction
//{
//    [self.firstVC changeColor1:[UIColor greenColor]];
//}

    
    
    
    
    
    
    



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
