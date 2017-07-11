//
//  ViewController.m
//  百度地图
//
//  Created by dllo on 16/4/23.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import <BaiduMapAPI_Map/BMKMapView.h>
#import <SMS_SDK/SMS_SDK/SMSSDK.h>
@interface ViewController ()
@property (nonatomic, retain)BMKMapView *mapView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view = [[BMKMapView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_mapView];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [SMSSDK getVerificationCodeByMethod:SMSGetCodeMethodSMS phoneNumber:_fieldTText.text zone:@"86" customIdentifier:nil result:^(NSError *error){
        if (!error) {
            NSLog(@"获取验证码成功");
        } else {
            NSLog(@"错误信息：%@",error);
        }
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
