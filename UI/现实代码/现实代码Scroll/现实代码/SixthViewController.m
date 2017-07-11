//
//  SixthViewController.m
//  现实代码
//
//  Created by dllo on 16/1/21.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SixthViewController.h"

@interface SixthViewController ()
@property (nonatomic, retain)UIScrollView *sixSV;
@property (nonatomic, retain)UIPageControl *sixPC;
@property (nonatomic, assign)NSInteger sixPI;
@end

@implementation SixthViewController
- (void)dealloc
{
    [_sixPC release];
    [_sixSV release];
    [super dealloc];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.sixSV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
    self.sixSV.contentOffset = 0
    
    
    
    
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
