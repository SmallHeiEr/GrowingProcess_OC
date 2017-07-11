//
//  ViewController.m
//  BleTest
//
//  Created by dllo on 16/4/16.
//  Copyright © 2016年 dllo. All rights reserved.
//
#import "CoreBluetooth/CoreBluetooth.h"
#import "ViewController.h"

@interface ViewController ()<CBCentralManagerDelegate, CBPeripheralDelegate>
@property (nonatomic, retain)CBCentralManager *MyCentralManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.MyCentralManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
    
}
#pragma mark - Navigation

- (void)centralManagerDidUpdateState:(CBCentralManager *)central

{
    
    switch (central.state) {
            
        case CBCentralManagerStateUnknown:
            
            break;
            
        case CBCentralManagerStateUnsupported:
            
            NSLog(@"模拟器不支持蓝牙调试");
            
            break;
            
        case CBCentralManagerStateUnauthorized:
            
            break;
            
        case CBCentralManagerStatePoweredOff:
            
            NSLog(@"蓝牙处于关闭状态");
            
            break;
            
        case CBCentralManagerStateResetting:
            
            break;
            
        case CBCentralManagerStatePoweredOn:
            
                      NSLog(@"蓝牙已开启");
            
            [self.MyCentralManager  scanForPeripheralsWithServices:nil  options:nil];
            
            break;
            
    }
    
    
    
}

- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI

{
    
    NSLog(@"能发现设备:%@",peripheral.name);
    
}
//-(void)seachAction{
//    //    NSLog(@“重新搜索");
//    self.cbCentralMgr.delegate=self;
//    [self.cbCentralMgr stopScan];
//    
//    if (dataArray.count) {
//        [dataArray removeAllObjects];
//    }
//    
//    NSDictionary * dic = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:NO],CBCentralManagerScanOptionAllowDuplicatesKey, nil];
//    [self.cbCentralMgr scanForPeripheralsWithServices:nil options:dic];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
