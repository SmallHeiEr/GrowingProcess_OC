//
//  ViewController.m
//  UI_24多媒体
//
//  Created by dllo on 16/3/14.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (nonatomic, retain)AVPlayer *player;
@property (nonatomic, retain)AVPlayerLayer *playerLayer;
@property (nonatomic, retain)AVPlayerItem *playerItem;
@property (nonatomic, retain)UISlider *progressSlider;
@property (nonatomic, retain)UIView *boomV;
@property (nonatomic, assign) BOOL isTop;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    适用场景：适用于播放一些很小的提示或警告音
//    局限性：1.声音长度小于30秒
//          2.格式：IMA4,及其他一些扩展专门针对声音片段的格式
//         3. 不能控制播放的速度
//         4. 调用方法后立即播放
//         5. 没有循环播放和立体声音播放
//    CFBundleRef mainBundle = CFBundleGetMainBundle();
//    
//    
//    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, CFSTR("蔡琴 - 爱断情伤"), CFSTR("wav"), NULL);
//    
//    SystemSoundID soundFileObject;
//    
////    传入url， 返回声音信息
//    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundFileObject);
//    
//    //播放声音片段
//    AudioServicesPlaySystemSound(soundFileObject);
    
    //视频
    self.boomV = [[UIView alloc]initWithFrame:CGRectMake(5, 255, [UIScreen mainScreen].bounds.size.width - 5 * 2, 50)];
    self.boomV.backgroundColor = [UIColor cyanColor];
    self.boomV.alpha = 0.5;
    [self.view addSubview:self.boomV];
    [self.boomV release];
    
    self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(5, 10, [UIScreen mainScreen].bounds.size.width - 5 * 2, 30)];
    [self.boomV addSubview:self.progressSlider];
    [self.progressSlider addTarget:self action:@selector(progressSliderAction:) forControlEvents:UIControlEventValueChanged];
    [_progressSlider release];
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self.view addGestureRecognizer:tapGR];
    
[self createPlayer];
[self.player play];
    //音量
    self.player.volume = 0.5;
    
    
    [self addNotificationCenters];
    [self addProgressObserver];
}
- (void)tapAction
{
    if (NO == self.isTop) {
        [UIView animateWithDuration:0.5 animations:^{
            self.boomV.alpha = 0;
            
        }];
    }
    else {
        [UIView animateWithDuration:0.5 animations:^{
            self.boomV.alpha = 0.5;
            
        }];
    }
    self.isTop = !self.isTop;
}

- (void)progressSliderAction:(UISlider *)sender
{
//    注意，要获取到总时长
     CGFloat duration = CMTimeGetSeconds(self.playerItem.duration);
    CGFloat currentTime = sender.value * duration;
    CMTime dragedCMTime = CMTimeMake(currentTime, 1);
    
//    设置播放时间－ 拖拽
    [self.player seekToTime:dragedCMTime completionHandler:^(BOOL finished) {
        
        [self.player play];
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
    __block ViewController *vc = self;
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
        
        NSString *remStr = [NSString stringWithFormat:@"%02d:%02d", (int)rem / 60, (int)rem % 60];
        NSString *currentStr = [NSString stringWithFormat:@"%02d:%02d", (int)current / 60, (int)current % 60];
        NSString *timeStr = [NSString stringWithFormat:@"%@/%@", currentStr, remStr];
        NSLog(@"%@ %@ %@", remStr, currentStr, timeStr);
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
    self.playerLayer.frame = CGRectMake(5, 5, [UIScreen mainScreen].bounds.size.width - 5 * 2, 300);
//    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
//    
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
- (void)createPlayer {
    NSString *urlStr = @"http://flv2.bn.netease.com/videolib3/1505/24/HYUCE6348/SD/HYUCE6348-mobile.mp4";
    urlStr = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    
    //视频信息，如URL
    self.playerItem = [[AVPlayerItem alloc]initWithURL:url];
    //播放器控制，如声音大小，进度等
    self.player = [AVPlayer playerWithPlayerItem:self.playerItem];
//    显示，如播放器窗口大小，位置，填充拉伸。。。等
    self.playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    self.playerLayer.frame = CGRectMake(5, 5, [UIScreen mainScreen].bounds.size.width - 5 * 2, 300);
//    playerLayer.backgroundColor = [UIColor cyanColor].CGColor;
    
    
//    视频填充模式
    self.playerLayer.videoGravity = AVLayerVideoGravityResize;
//    添加显示播放器，注意添加到view的layer层上
    [self.view.layer insertSublayer:self.playerLayer atIndex:0];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
