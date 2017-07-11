//
//  RootViewController.m
//  11111111
//
//  Created by dllo on 16/2/26.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scrollV = [[UIScrollView alloc]initWithFrame:self.view.frame];
    scrollV.contentSize = CGSizeMake(self.view.frame.size.width * 19, self.view.frame.size.height);
    scrollV.contentOffset = CGPointMake(self.view.frame.size.width, 0);
    scrollV.bounces = NO;
    scrollV.pagingEnabled = YES;
    [self.view addSubview:scrollV];
    [scrollV release];
//    NSMutableArray *imageArr = [NSMutableArray alloc];
    for (NSInteger i = 0; i < 19; i++) {
        NSString *imageName = [NSString stringWithFormat:@"image%ld.jpg", i];
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width * i, 0, self.view.frame.size.width, self.view.frame.size.height)];
        imageV.image = [UIImage imageNamed:imageName];
        [scrollV addSubview:imageV];
        [imageV release];
//        [imageArr addObject:imageV];
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
