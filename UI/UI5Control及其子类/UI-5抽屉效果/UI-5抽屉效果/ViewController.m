//
//  ViewController.m
//  UI-5抽屉效果
//
//  Created by dllo on 16/1/18.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "mainViewController.h"
#import "setViewController.h"
@interface ViewController ()
@property (nonatomic, retain) mainViewController *mVC;
@property (nonatomic, retain) setViewController *setVC;
@end

@implementation ViewController
- (void)dealloc
{
    [_mVC release];
    [_setVC release];
    [super dealloc];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.mVC = [[mainViewController alloc]init];
    //mVC.view.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);
    [self addChildViewController:self.mVC];
    [self.view addSubview:self.mVC.view];
    [self.mVC release];
    self.setVC = [[setViewController alloc]init];
    self.setVC.view.frame = CGRectMake(-150, 0, 150, self.view.frame.size.height);
    [self addChildViewController:self.setVC];
    [self.view addSubview:self.setVC.view];
    [self.setVC release];
    
    UIScreenEdgePanGestureRecognizer *screenGR = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(screenAction:)];
    screenGR.edges = UIRectEdgeLeft;
    [self.mVC.view addGestureRecognizer:screenGR];
    [screenGR release];
    //    设置轻拍手势
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    
    [self.mVC.view addGestureRecognizer:tapGR];
    [tapGR release];
    
    
    
    
}
- (void)tapAction:(UITapGestureRecognizer *)sender
{
    [UIView animateWithDuration:1.0 animations:^{
        self.mVC.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        self.setVC.view.frame = CGRectMake(-150, 0, 150, self.view.frame.size.height);
        
    }];
}
- (void)screenAction:(UIScreenEdgePanGestureRecognizer *)sender
{
    if (UIGestureRecognizerStateEnded == sender.state) {
        NSLog(@"边缘手势");
        [UIView animateWithDuration:1.0 animations:^{
            
            self.setVC.view.frame = CGRectMake(0, 0, 150, self.view.frame.size.height);
            self.mVC.view.frame = CGRectMake(150, 100, self.view.frame.size.width, self.view.frame.size.height - 200);
        }];
        
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
