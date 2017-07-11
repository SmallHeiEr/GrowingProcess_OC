//
//  ViewController.m
//  coreLocation
//
//  Created by dllo on 16/3/24.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()<CLLocationManagerDelegate>

@property (nonatomic, retain)CLLocationManager *locationM;
@end

@implementation ViewController
- (CLLocationManager *) locationM
{
    if (!_locationM) {
        _locationM = [[CLLocationManager alloc] init];
        _locationM.delegate = self;
    }
    return _locationM;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
//    手动授权
    [self.locationM requestAlwaysAuthorization];
//    _locationM = [[CLLocationManager alloc] init];
//    _locationM.delegate = self;

}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if (status == kCLAuthorizationStatusNotDetermined) {
        NSLog(@"等待授权");
    } else if (status == kCLAuthorizationStatusAuthorizedAlways || status == kCLAuthorizationStatusAuthorizedWhenInUse) {
        NSLog(@"授权成功");
        
//        开启定位
        [self.locationM startUpdatingLocation];
//        精准度（最高，费电 导航）
        self.locationM.desiredAccuracy = kCLLocationAccuracyBestForNavigation;
    } else {
        NSLog(@"授权失败");
    }
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    NSLog(@"%@", locations);
//    locations数组里存在的是CLLocation对象， 每个对象代表一个位置
    CLLocation *location = [locations lastObject];
    NSLog(@"纬度:%f 经度:%f 速度:%f 方向:%f", location.coordinate.latitude, location.coordinate.longitude, location.speed, location.course);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
