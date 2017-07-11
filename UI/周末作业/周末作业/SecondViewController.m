//
//  SecondViewController.m
//  周末作业
//
//  Created by dllo on 16/1/15.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageV.image = [UIImage imageNamed:@"BackGround.png"];
    [self.view addSubview:imageV];
    [imageV release];
    
    NSMutableArray *imageArr = [NSMutableArray array];
    for (NSInteger i = 0; i < 18; i++) {
        NSString *imageName = [NSString stringWithFormat:@"flower%ld.tiff", i + 1];
        UIImage *image = [UIImage imageNamed:imageName];
        [imageArr addObject:image];
    }
    UIImageView *flowerV = [[UIImageView alloc]initWithFrame:CGRectMake(60, 90, 100, 100)];
    
    flowerV.image = [UIImage imageNamed:@"flower1.tiff"];
    
    flowerV.animationImages = imageArr;
    flowerV.animationDuration = 1.5;
    [self.view addSubview:flowerV];
    [flowerV release];
    [flowerV startAnimating];
    NSMutableArray *zombieArr = [NSMutableArray array];
    for (NSInteger i = 0; i < 21; i++) {
        NSString *imageName = [NSString stringWithFormat:@"Zombie%ld.tiff", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [zombieArr addObject:image];
    }
    UIImageView *zombieV = [[UIImageView alloc]initWithFrame:CGRectMake(260, 38, 150, 150)];
    
    zombieV.image = [UIImage imageNamed:@"Zombie0.tiff"];
    
    zombieV.animationImages = zombieArr;
    zombieV.animationDuration = 1.5;
    [self.view addSubview:zombieV];
    [zombieV release];
    [zombieV startAnimating];
    NSMutableArray *plantsArr = [NSMutableArray array];
    for (NSInteger i = 0; i < 9; i++) {
        NSString *imageName = [NSString stringWithFormat:@"plants%ld.tiff", i + 1];
        UIImage *image = [UIImage imageNamed:imageName];
        [plantsArr addObject:image];
    }
    UIImageView *plantsV = [[UIImageView alloc]initWithFrame:CGRectMake(30, 300, 150, 150)];
    
    plantsV.image = [UIImage imageNamed:@"plants1.tiff"];
    
    plantsV.animationImages = plantsArr;
    plantsV.animationDuration = 1.5;
    [self.view addSubview:plantsV];
    [plantsV release];
    [plantsV startAnimating];
    NSMutableArray *BZombieArr = [NSMutableArray array];
    for (NSInteger i = 0; i < 25; i++) {
        NSString *imageName = [NSString stringWithFormat:@"BZombie%ld.tiff", i + 1];
        UIImage *image = [UIImage imageNamed:imageName];
        [BZombieArr addObject:image];
    }
    UIImageView *BZombieV = [[UIImageView alloc]initWithFrame:CGRectMake(260, 300, 150, 150)];
    
    BZombieV.image = [UIImage imageNamed:@"BZombie1.tiff"];
    
    BZombieV.animationImages = BZombieArr;
    BZombieV.animationDuration = 1.5;
    [self.view addSubview:BZombieV];
    [BZombieV release];
    [BZombieV startAnimating];
    NSMutableArray *guaArr = [NSMutableArray array];
    for (NSInteger i = 0; i < 16; i++) {
        NSString *imageName = [NSString stringWithFormat:@"gua%ld.tiff", i + 1];
        UIImage *image = [UIImage imageNamed:imageName];
        [guaArr addObject:image];
    }
    UIImageView *guaV = [[UIImageView alloc]initWithFrame:CGRectMake(150, 90, 100, 100)];
    
    guaV.image = [UIImage imageNamed:@"gua1.tiff"];
    
    guaV.animationImages = guaArr;
    guaV.animationDuration = 1.5;
    [self.view addSubview:guaV];
    [guaV release];
    [guaV startAnimating];
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
