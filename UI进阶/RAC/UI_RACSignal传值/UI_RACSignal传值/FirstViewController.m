//
//  FirstViewController.m
//  UI_RACSignal传值
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "FirstViewController.h"
#import "ReactiveCocoa.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
   
    [self dismissViewControllerAnimated:YES completion:^{
#pragma mark - 发送消息给A
        [_target sendNext:@"爱你一万年"];
    }];
    
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
