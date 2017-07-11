//
//  AppDelegate.m
//  UI--UITabBarController
//
//  Created by dllo on 16/1/29.
//  Copyright © 2016年 lanou. All rights reserved.
//
#import "SecondViewController.h"
#import "AppDelegate.h"
#import "RootViewController.h"
#import "ThirdViewController.h"
#import "SixViewController.h"
#import "FiveViewController.h"
#import "FourViewController.h"
@interface AppDelegate () <UITabBarControllerDelegate>

@end

@implementation AppDelegate
- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self.window release];
    UITabBarController *tabBarC = [[UITabBarController alloc]init];
//     默认高度49， 5个以上重叠
    
    
    RootViewController *rootVC = [[RootViewController alloc]init];
    UINavigationController *rootNC = [[UINavigationController alloc]initWithRootViewController:rootVC];
     rootNC.tabBarItem = [[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:10001]autorelease];
    
    
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    UINavigationController *secondNC = [[UINavigationController alloc]initWithRootViewController:secondVC];
//    secondVC.tabBarItem = [[[UITabBarItem alloc]initWithTabBarSystemItem:    UITabBarSystemItemTopRated tag:10002]autorelease];
    secondVC.tabBarItem = [[[UITabBarItem alloc]initWithTitle:@"用户" image:[UIImage imageNamed:@"21-skull.png"] tag:10002]autorelease];
    secondNC.tabBarItem.badgeValue = @"99+";
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    UINavigationController *thirdNC = [[UINavigationController alloc]initWithRootViewController:thirdVC];
//    thirdVC.tabBarItem = [[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:10003]autorelease];
    thirdVC.tabBarItem = [[[UITabBarItem alloc]initWithTitle:@"咖啡" image:[UIImage imageNamed:@"34-coffee.png"] selectedImage:[UIImage imageNamed:@"08-chat.png"]]autorelease];

    FourViewController *fourVC = [[[FourViewController alloc]init]autorelease];
    UINavigationController *fourNC = [[[UINavigationController alloc]initWithRootViewController:fourVC]autorelease];
    fourVC.tabBarItem = [[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:10004]autorelease];
    
    
    FiveViewController *fiveVC = [[[FiveViewController alloc]init]autorelease];
    UINavigationController *fiveNC = [[[UINavigationController alloc]initWithRootViewController:fiveVC]autorelease];
    fiveVC.tabBarItem = [[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:10003]autorelease];
    
    SixViewController *sixVC = [[[SixViewController alloc]init]autorelease];
    UINavigationController *sixNC = [[[UINavigationController alloc]initWithRootViewController:sixVC]autorelease];
    sixVC.tabBarItem = [[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:10003]autorelease];
//    重要属性 - 所管理的界面数组
    tabBarC.viewControllers = @[rootNC, secondNC, thirdNC, fourNC, fiveNC, sixNC];
    tabBarC.delegate = self;
//    边框颜色
    tabBarC.tabBar.tintColor = [UIColor grayColor];
//    tabBarC.tabBar.barTintColor = [UIColor blueColor];
    tabBarC.tabBar.backgroundColor = [UIColor greenColor];
//    是否半透明
    tabBarC.tabBar.translucent = YES;
  
    [tabBarC.tabBar setBackgroundImage:[UIImage imageNamed:@"屏幕快照 2016-01-18 上午9.39.15.png"]];
    self.window.rootViewController = tabBarC;
    [tabBarC release];
    [rootVC release];
    [secondVC release];
    [thirdVC release];
    [rootNC release];
    [secondNC release];
    [thirdNC release];
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSLog( @"%ld", tabBarController.selectedIndex);
    if (1 == tabBarController.selectedIndex) {
        UINavigationController *navifationC = (UINavigationController *)viewController;
        navifationC.tabBarItem.badgeValue = nil;
    }
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
