//
//  DetailedViewController.m
//  作业
//
//  Created by dllo on 16/1/19.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DetailedViewController.h"
#import "SLIView.h"
@interface DetailedViewController ()

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollV = [[UIScrollView alloc]initWithFrame:self.view.frame];
    scrollV.contentSize = CGSizeMake(0, self.view.frame.size.height * 5);
    scrollV.pagingEnabled = YES;
    [self.view addSubview:scrollV];
    [scrollV release];
    for (NSInteger i = 0; i < 19; i ++) {
        SLIView *view = [[SLIView alloc]initWithFrame:CGRectMake(0, 50 + i * self.view.frame.size.width / 3, self.view.frame.size.width, 40)];
        NSString *str = [NSString stringWithFormat:@"image%ld.jpg", i + 1];
        view.imageV.image = [UIImage imageNamed:str];
        view.label1.text = [NSString stringWithFormat:@"    image%ld.jpg", i + 1];
        [scrollV addSubview:view];
        [view release];
    
    }
    
    
    
    
    
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
