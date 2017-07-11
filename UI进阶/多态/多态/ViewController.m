//
//  ViewController.m
//  多态
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    对象的多态（编译时是Student 运行时是Person）
//    Student *stu = [[Person alloc] init];
//    [stu studentSay];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
