//
//  RootViewController.m
//  播放器
//
//  Created by dllo on 16/3/17.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "RootViewController.h"
#import "RootTabBarController.h"
#import "LeftControlViewController.h"
#import "MusicViewController.h"
#import "CinemaViewController.h"
#import "ExerciseViewController.h"
#import "ConViewController.h"

@interface RootViewController ()
@property (nonatomic, retain)RootTabBarController *rootTBC;
@property (nonatomic, retain)LeftControlViewController *leftCVC;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.rootTBC = [[RootTabBarController alloc]init];
    
    ExerciseViewController *exercuseVC = [[ExerciseViewController alloc]init];
   
    exercuseVC.tabBarItem = [[[UITabBarItem alloc]initWithTitle:@"活动" image:[UIImage imageNamed:@"activity.png"] tag:10001]autorelease];
    //    电影
    ConViewController *filmVC = [[ConViewController alloc]init];
      filmVC.tabBarItem = [[[UITabBarItem alloc]initWithTitle:@"电影" image:[UIImage imageNamed:@"movie.png"] tag:10002]autorelease];
    //    影院
    CinemaViewController *cinemaVC = [[CinemaViewController alloc]init];
       cinemaVC.tabBarItem = [[[UITabBarItem alloc]initWithTitle:@"影院" image:[UIImage imageNamed:@"cinema.png"] tag:10003]autorelease];
    //    用户
    MusicViewController *musicVC = [[MusicViewController alloc]init];
  
    
    musicVC.tabBarItem = [[[UITabBarItem alloc]initWithTitle:@"音乐" image:[UIImage imageNamed:@"user.png"] tag:10004]autorelease];
    
    
    NSArray *rootArr = [[NSArray alloc]initWithObjects:musicVC, exercuseVC, cinemaVC, filmVC, nil];
    
    self.rootTBC.viewControllers = rootArr;
//    [self addChildViewController:self.rootTBC];
    [self.view addSubview:self.rootTBC.view];
    [self.rootTBC release];
    
    self.leftCVC = [LeftControlViewController alloc];
    self.leftCVC.view.frame = CGRectMake(- 150, 0, 150, self.view.frame.size.height);
    [self addChildViewController:self.leftCVC];
    [self.view addSubview:self.leftCVC.view];
    [self.leftCVC release];
    
    UIScreenEdgePanGestureRecognizer *screenGR = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(screenAction:)];
    screenGR.edges = UIRectEdgeLeft;
    [self.rootTBC.view addGestureRecognizer:screenGR];
    [screenGR release];
    //        设置轻拍手势
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    
    [self.leftCVC.view addGestureRecognizer:tapGR];
    [tapGR release];
    //
    
    
    
    
}
- (void)tapAction:(UITapGestureRecognizer *)sender
{
    [UIView animateWithDuration:1.0 animations:^{
        self.rootTBC.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        self.leftCVC.view.frame = CGRectMake(-150, 0, 150, self.view.frame.size.height);
        
    }];
    
}
- (void)screenAction:(UIScreenEdgePanGestureRecognizer *)sender
{
    if (UIGestureRecognizerStateEnded == sender.state) {
        NSLog(@"边缘手势");
        [UIView animateWithDuration:1.0 animations:^{
            
            self.leftCVC.view.frame = CGRectMake(0, 0, 150, self.view.frame.size.height);
            self.rootTBC.view.frame = CGRectMake(150, 0, self.view.frame.size.width, self.view.frame.size.height);
        }];
        
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
