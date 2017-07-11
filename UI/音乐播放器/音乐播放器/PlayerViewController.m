//
//  PlayerViewController.m
//  音乐播放器
//
//  Created by dllo on 16/2/25.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "PlayerViewController.h"
#import "STKAudioPlayer.h"

@interface PlayerViewController ()

@property (nonatomic, retain) STKAudioPlayer *player;
@property (nonatomic, retain) UIButton *playB;
@property (nonatomic, retain) UIButton *stopB;

@property (nonatomic, retain) UISlider *volS;
@property (nonatomic, retain) UISlider *timeS;

@property (nonatomic, retain) NSTimer *timer;
@end

@implementation PlayerViewController
- (void)dealloc
{
    [_playB release];
    [_player release];
    [_stopB release];
    [_volS release];
    [_timer release];
    [_timeS release];
    [super dealloc];
}
+ (instancetype)sharePlayerViewController
{
    static PlayerViewController *playerVC = nil;
    if (nil == playerVC) {
        playerVC = [[PlayerViewController alloc] init];
    }
    return playerVC;
}  

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
