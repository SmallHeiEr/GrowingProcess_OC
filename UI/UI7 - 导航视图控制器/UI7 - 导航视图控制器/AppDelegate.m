//
//  AppDelegate.m
//  UI7 - 导航视图控制器
//
//  Created by dllo on 16/1/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self.window release];
    RootViewController *rootVC = [[RootViewController alloc]init];
//    导航
    UINavigationController *navigationC = [[UINavigationController alloc]initWithRootViewController:rootVC];
//    背景色
    navigationC.navigationBar.backgroundColor = [UIColor redColor];
//    表面色
    //navigationC.navigationBar.barTintColor = [UIColor greenColor];
//    边框色
    //navigationC.navigationBar.tintColor = [UIColor blackColor];
//    是否透明
//    注意：透明度会影响到内容视图的起始位置
//    竖屏默认导航栏宽度为44，横屏32
    navigationC.navigationBar.translucent = YES;
//    样式风格
    navigationC.navigationBar.barStyle = UIBarStyleBlackOpaque;
//    背景图片
    [navigationC.navigationBar setBackgroundImage:[UIImage imageNamed:@"屏幕快照 2016-01-18 上午9.39.15.png"] forBarMetrics:UIBarMetricsDefault];
    
    self.window.rootViewController = navigationC;
    [navigationC release];
    [rootVC release];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
