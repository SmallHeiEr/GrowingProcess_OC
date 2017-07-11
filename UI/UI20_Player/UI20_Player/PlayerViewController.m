//
//  PlayerViewController.m
//  UI20_Player
//
//  Created by TravelRound on 15/12/4.
//  Copyright © 2015年 TravelRound. All rights reserved.
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
    [_player release];
    [_playB release];
    [_stopB release];
    [_volS release];
    [_timeS release];
    [_timer release];
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
    self.view.backgroundColor = [UIColor whiteColor];
    
    STKAudioPlayerOptions playerOptions = {YES, YES, {50, 100, 200, 400, 800, 1600, 2600, 16000}};
    
    self.player = [[[STKAudioPlayer alloc] initWithOptions:playerOptions] autorelease];
//    self.player.volume = 100;
    
    
    self.playB = [UIButton buttonWithType:UIButtonTypeCustom];
    self.playB.frame = CGRectMake(100, 100, 50, 30);
    [self.playB setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.playB setTitle:@"播放" forState:UIControlStateNormal];
    [self.playB setTitle:@"暂停" forState:UIControlStateSelected];
    [self.playB addTarget:self action:@selector(playAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.playB];
    
    self.stopB = [UIButton buttonWithType:UIButtonTypeCustom];
    self.stopB.frame = CGRectMake(180, 100, 50, 30);
    [self.stopB setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.stopB setTitle:@"停止" forState:UIControlStateNormal];
    [self.stopB addTarget:self action:@selector(stopAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.stopB];
    
    self.volS = [[UISlider alloc] initWithFrame:CGRectMake(50, 220, 300, 30)];
    [self.volS addTarget:self action:@selector(volAction) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.volS];
    [_volS release];
    
    self.timeS = [[UISlider alloc] initWithFrame:CGRectMake(50, 280, 300, 30)];
    self.timeS.maximumValue = 169;
    [self.timeS addTarget:self action:@selector(timeAction) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.timeS];
    [_timeS release];
    
}

- (void)timeAction
{
    // 跳转时间
    [self.player seekToTime:self.timeS.value];
}

- (void)volAction
{
    // 设置音量
    self.player.volume = self.volS.value;
}

- (void)playAction
{
    
    if (STKAudioPlayerStatePlaying == self.player.state) {
        
        // 暂停
        [self.player pause];
        self.playB.selected = NO;
        
    } else if (STKAudioPlayerStatePaused == self.player.state) {
        
        // 继续
        [self.player resume];
        self.playB.selected = YES;
        
    } else {
        
        // 播放
        [self.player play:@"http://m1.music.126.net/dwU2U0CcedrOpMLrvC7bMg==/1032441418490280.mp3"];
        
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(trackAction) userInfo:nil repeats:YES];
        
        self.playB.selected = YES;
    }
}

- (void)trackAction
{
    NSLog(@"当前分钟:%ld, 当前秒:%ld", (NSInteger)self.player.progress / 60, (NSInteger)self.player.progress % 60);

    NSLog(@"总分钟:%ld, 总秒:%ld", (NSInteger)self.player.duration / 60, (NSInteger)self.player.duration % 60);
    
    // 进度条更新
    self.timeS.value = self.player.progress;
    
}

- (void)stopAction
{
    // 停止
    [self.player stop];
    self.playB.selected = NO;
    // 停止定时器
    [self.timer invalidate];
//    self.timer = nil;
    
    self.timeS.value = 0;
    
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
