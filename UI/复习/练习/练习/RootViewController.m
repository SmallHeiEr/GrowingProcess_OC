//
//  RootViewController.m
//  练习
//
//  Created by dllo on 16/2/24.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "rootView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    rootView *view1 = [[rootView alloc]initWithFrame:CGRectMake(20, 80, self.view.frame.size.width - 20 * 2, 30)];
//    view1.label.text = @"用户名";
//    view1.field.placeholder = @"请输入用户名";
//    view1.field.secureTextEntry = YES;
//
//    [self.view addSubview:view1];
//    [view1 release];
//    
//    NSMutableArray *imageArr = [NSMutableArray array];
//    for (NSInteger i = 0; i < 18; i++) {
//        NSString *imageName = [NSString stringWithFormat:@"", i + 1];
//    
//    UIImage *image = [UIImage imageNamed:imageName];
//        [imageArr addObject:image];
//    }
//    UIImageView *flowerV = [[UIImageView alloc] initWithFrame:CGRectMake(52, 66, 100, 100)];
//    flowerV.image = [UIImage imageNamed:@"flower"];
//    flowerV.animationImages = imageArr;
//    flowerV.animationDuration = 1.5;
//    [self.view addSubview:flowerV];
//    [flowerV release];
//    [flowerV startAnimating];
//    [flowerV stopAnimating];
    
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
