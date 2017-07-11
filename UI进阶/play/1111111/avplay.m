//
//  avplay.m
//  1111111
//
//  Created by dllo on 16/3/30.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "avplay.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface avplay ()
@property (nonatomic, retain)AVPlayer *player;
@property (nonatomic, retain)AVPlayerLayer *playerLayer;
@property (nonatomic, retain)AVPlayerItem *playerItem;
@property (nonatomic, retain)UISlider *progressSlider;
@property (nonatomic, retain)UIView *boomV;
@property (nonatomic, assign) BOOL isTop;
@property (nonatomic, retain) UILabel *timeR;
@property (nonatomic, retain) UIButton *button;
@end



@implementation avplay
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubViews];
    }
    return self;
}
- (void)createSubViews
{
    

//    进度条下面的View
    self.boomV = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height / 6 * 5, self.frame.size.width, self.frame.size.height / 6)];
    self.boomV.backgroundColor = [UIColor blackColor];
    self.boomV.alpha = 1;
    [self addSubview:self.boomV];
    [self.boomV release];
//    进度条
    self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(self.boomV.frame.size.height + self.frame.size.height / 60, self.frame.size.height / 60 * 4, self.frame.size.width / 60 * 58 - self.boomV.frame.size.height, self.frame.size.height / 10)];
    [self.boomV addSubview:self.progressSlider];
    [self.progressSlider addTarget:self action:@selector(progressSliderAction:) forControlEvents:UIControlEventValueChanged];
    [_progressSlider release];
  
    self.timeR = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width - self.frame.size.width * 120 / 414, 0, self.frame.size.width * 120 / 414, self.frame.size.height / 20)];
    self.timeR.textColor = [UIColor whiteColor];

    [self.boomV addSubview:self.timeR];
    [self.timeR release];
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button.frame = CGRectMake(self.frame.size.height / 30, self.frame.size.height / 30, self.boomV.frame.size.height- self.frame.size.height / 15, self.boomV.frame.size.height- self.frame.size.height / 15);
    [self.button setBackgroundImage:[UIImage imageNamed:@"iconfont-weibiaoti102.png"] forState:UIControlStateNormal];
    
    [self.button addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    [self.boomV addSubview:self.button];
    
    
//    轻拍
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self addGestureRecognizer:tapGR];
    
    
    [self createPlayerurl:self.urlStr];
   
    //音量
    self.player.volume = 0.5;
    
    [self createPlayerurl:@"http://baobab.wdjcdn.com/1461595640215_6874_854x480.mp4"];
    [self addNotificationCenters];
    [self addProgressObserver];

    
}
- (void)start
{
    [self.player play];
    [self.button setBackgroundImage:[UIImage imageNamed:@"iconfont-zanting (1).png"] forState:UIControlStateNormal];
   [self.button addTarget:self action:@selector(pause) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pause
{
    [self.player pause];
    [self.button setBackgroundImage:[UIImage imageNamed:@"iconfont-weibiaoti102.png"] forState:UIControlStateNormal];
    
    [self.button addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
}
//进度条消失和显示
- (void)tapAction
{
    if (NO == self.isTop) {
        [UIView animateWithDuration:0.5 animations:^{
            self.boomV.alpha = 0;
            }];
    }
    else {
        [UIView animateWithDuration:0.5 animations:^{
            self.boomV.alpha = 0.7;
        }];
    }
    self.isTop = !self.isTop;
}
//进度条方法
- (void)progressSliderAction:(UISlider *)sender
{
    //    注意，要获取到总时长
    CGFloat duration = CMTimeGetSeconds(self.playerItem.duration);
    CGFloat currentTime = sender.value * duration;
    CMTime dragedCMTime = CMTimeMake(currentTime, 1);
    //    设置播放时间－ 拖拽
    [self.player seekToTime:dragedCMTime completionHandler:^(BOOL finished) {
        [self start];
    }];
}
- (void)addProgressObserver
{
    //    CMTimeMake是用来建立CMTime的
    //    CMTime专门用来表示视频时间
    //    用法：CMTime CMTimeMake(int64_t value, int32_t timescale)
    //    value － 指时间， 不是秒，要换成秒就要看第二个参数timescale
    //    TimeScale － 指一秒需要多少帧率构成
    //    真正表示时间（秒）：value／timescale
    //    CMTime curFrame ＝ CMTimeMake（第几帧， 帧率）
    __block avplay *vc = self;
    //    功能：固定时间间隔执行一次
    //    设置CMTimeMake（1，1），代表每秒执行一次
    [vc.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        //        注意，总时长属于视频信息 －playerItem;当前时间属于视频控制－－player
        //总时长
        CGFloat duration = CMTimeGetSeconds(self.playerItem.duration);
        //当前播放时间
        CGFloat current = CMTimeGetSeconds(self.player.currentTime);
        //        剩余时间
        CGFloat rem = duration - current;
        NSLog(@"%f %f", duration, current);
        //        剩余时间
        NSString *remStr = [NSString stringWithFormat:@"%02d:%02d", (int)rem / 60, (int)rem % 60];
//        以用时间
        NSString *currentStr = [NSString stringWithFormat:@"%02d:%02d", (int)current / 60, (int)current % 60];
        NSString *timeStr = [NSString stringWithFormat:@"%@/%@", currentStr, remStr];
        //        总时间
        NSString *durationStr = [NSString stringWithFormat:@"%02d:%02d", (int)rem / 60, (int)duration % 60];
        NSLog(@"%@    %@",durationStr, timeStr);
        self.timeR.text = timeStr;
        //        设置进度值
        self.progressSlider.value = current / duration;
    }];
}
- (void)addNotificationCenters
{
    //注册观察者监听是否完成播放
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayDidEnd) name:AVPlayerItemDidPlayToEndTimeNotification object:nil];
    //注册观察者监听屏幕旋转
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(statusBarOrientationChange) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
}
- (void)statusBarOrientationChange
{
    self.playerLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.boomV.frame = CGRectMake(0, self.frame.size.height / 6 * 5, self.frame.size.width, self.frame.size.height / 6);
     self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(self.boomV.frame.size.height + self.frame.size.height / 60, self.frame.size.height / 60 * 4, self.frame.size.width / 60 * 58 - self.boomV.frame.size.height, self.frame.size.height / 10)];
    self.timeR.frame = CGRectMake(self.frame.size.width - 120, 0, 120, self.frame.size.height / 20);
    self.button.frame = CGRectMake(0, 0, self.boomV.frame.size.height, self.boomV.frame.size.height);
    //    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    //    if (UIInterfaceOrientationLandscapeLeft == orientation) {
    //        NSLog(@"屏幕向左旋转");
    //    }
    //    if (UIInterfaceOrientationLandscapeRight == orientation) {
    //        NSLog(@"屏幕向右旋转");
    //    }
    //    if (UIInterfaceOrientationPortrait == orientation) {
    //        NSLog(@"竖屏");
    //    }
}
- (void)moviePlayDidEnd
{
    NSLog(@"播放完成");
    //    播放完成 后续处理
}
- (void)createPlayerurl:(NSString *)urlStr
{
    
    urlStr = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    
    //视频信息，如URL
    self.playerItem = [[AVPlayerItem alloc]initWithURL:url];
    //播放器控制，如声音大小，进度等
    self.player = [AVPlayer playerWithPlayerItem:self.playerItem];
    //    显示，如播放器窗口大小，位置，填充拉伸。。。等
    self.playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    self.playerLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    //    playerLayer.backgroundColor = [UIColor cyanColor].CGColor;
    //    视频填充模式
    self.playerLayer.videoGravity = AVLayerVideoGravityResize;
    //    添加显示播放器，注意添加到view的layer层上
    [self.layer insertSublayer:self.playerLayer atIndex:0];
    
    
}










/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//  在view中获取controller的方法
- (UIViewController *)viewController {
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

@end
