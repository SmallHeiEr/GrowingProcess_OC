//
//  ViewController.m
//  二维码
//
//  Created by dllo on 16/4/23.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()<AVCaptureMetadataOutputObjectsDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
//    创建输入流
    AVCaptureDeviceInput *inpyt = [AVCaptureDeviceInput deviceInputWithDevice:device error:nil];
//    创建输出流
    AVCaptureMetadataOutput *output = [[AVCaptureMetadataOutput alloc] init];
//    设置代理（在主线程里刷新）
    [output setMetadataObjectsDelegate:self queue:nil];
//    初始化连接对象
    AVCaptureSession *session = [[AVCaptureSession alloc] init];
//    高质量采集
    [session setSessionPreset:AVCaptureSessionPresetHigh];
    
    [session addInput:inpyt];
    [session addOutput:output];
//    设置扫描编码，（二维码，条形码）
    output.metadataObjectTypes = @[AVMetadataObjectTypeCode128Code, AVMetadataObjectTypeEAN8Code, AVMetadataObjectTypeEAN13Code, AVMetadataObjectTypeQRCode];
//    初始化预览图层 （就是可以快速呈现相机（摄像头）所采集的原始数据）
    AVCaptureVideoPreviewLayer *layer = [AVCaptureVideoPreviewLayer layerWithSession:session];
    
    layer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    
    layer.frame = self.view.layer.bounds;
    [self.view.layer insertSublayer:layer above:0];
//    开始扫描
    [session startRunning];
    
}
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection
{
    if (metadataObjects.count > 0) {
        AVMetadataMachineReadableCodeObject *metdata = metadataObjects.lastObject;
        NSLog(@"%@", metdata.stringValue);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
