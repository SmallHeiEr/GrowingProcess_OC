//
//  ViewController.m
//  Button
//
//  Created by dllo on 16/3/2.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "LeafProgressView.h"

@interface ViewController ()
@property (nonatomic, retain) LeafProgressView *progress;
@property (nonatomic, assign) CGFloat rate;

@end

@implementation ViewController
- (void)dealloc
{
    
    [_progress release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.progress = [[LeafProgressView alloc]initWithFrame:CGRectMake(36, 200, 248, 35)];
    [self.view addSubview:_progress];
    
    [_progress startLoading];

    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    _rate += 0.01;
    
    [_progress setProgress:_rate];
    if (_rate >= 0.999) {
        _rate = 0 ;
        [_progress stopLoading];
    }
}
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
