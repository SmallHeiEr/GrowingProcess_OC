//
//  RootViewController.m
//  UI_扫雷
//
//  Created by dllo on 15/9/5.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import "RootViewController.h"


#define kWidth self.view.frame.size.width

#define kHeight self.view.frame.size.height

@interface RootViewController ()
// 计时器
@property (nonatomic, retain) NSTimer *time;
// 炸弹数量
@property (nonatomic, assign) NSInteger bombNumber;
// 计时数
@property (nonatomic, assign) NSInteger timer;
// 开始状态
@property (nonatomic, assign) BOOL isStart;

@property (nonatomic, retain) UIButton *changeB;

@property (nonatomic, retain) UILabel *label;
// 字典中存放button是否被判断的状态, 0为未判断, 1为判断过
@property (nonatomic, retain) NSMutableDictionary *dic;

@end

@implementation RootViewController

- (void)dealloc
{
    [_changeB release];
    [_label release];
    [_time release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // self.view.backgroundColor = [UIColor whiteColor];
    NSDate *date = [NSDate date];

    NSString *str1 = [date descriptionWithLocale:[NSLocale currentLocale]];
    NSLog(@"str1 = %@", str1);

    self.isStart = NO;
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(20, 30, 100, 50)];
    self.label.text = [NSString stringWithFormat:@"炸弹数量: %ld", self.bombNumber];
    self.label.textColor = [UIColor redColor];
    [self.view addSubview:self.label];
    [self.label release];
    
    UILabel *timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(285, 30, 80, 50)];
    timeLabel.text = [NSString stringWithFormat:@"⌚️: %ld", self.timer];
    timeLabel.textColor = [UIColor grayColor];
    timeLabel.tag = 11;
    [self.view addSubview:timeLabel];
    [timeLabel release];
    
    _time = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];
    [_time setFireDate:[NSDate distantFuture]];
    
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeSystem];
    startButton.frame = CGRectMake(kWidth / 2 - 50, 30, 100, 50);
    [startButton setTitle:@"😊" forState:UIControlStateNormal];
    startButton.tag = 10;
    [startButton addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startButton];

    self.changeB = [UIButton buttonWithType:UIButtonTypeSystem];
    self.changeB.frame = CGRectMake(self.view.center.x - 50, kHeight - 200, 100, 30);
    self.changeB.backgroundColor = [UIColor colorWithRed:0.792 green:0.784 blue:0.792 alpha:1];
    [self.changeB addTarget:self action:@selector(changeAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.changeB];
    
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.backgroundColor = [UIColor colorWithRed:0.792 green:0.784 blue:0.792 alpha:1];
            button.tag = 101 + j + 20 * i;
            button.frame = CGRectMake(1 + ((kWidth - 11) / 10 + 1) * j, 100 + ((kWidth - 11)/ 10 + 1) * i, (kWidth - 11) / 10, (kWidth - 11) / 10);
            [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:button];
        }
    }
//    [self start];
}

- (void)changeAction
{
    if ([self.changeB.backgroundColor isEqual:[UIColor redColor]]) {
        self.changeB.backgroundColor = [UIColor colorWithRed:0.792 green:0.784 blue:0.792 alpha:1];
    }else{
        self.changeB.backgroundColor = [UIColor redColor];
    }
}


- (void)timeAction
{
    ((UILabel *)[self.view viewWithTag:11]).text = [NSString stringWithFormat:@"⌚️: %ld", self.timer++];
}

- (void)start
{
    self.dic = [NSMutableDictionary dictionary];
    self.changeB.backgroundColor = [UIColor colorWithRed:0.792 green:0.784 blue:0.792 alpha:1];
    self.bombNumber = 20;
    self.label.text = [NSString stringWithFormat:@"炸弹数量: %ld", self.bombNumber];
    self.isStart = YES;
    self.timer = 0;
    [_time setFireDate:[NSDate distantPast]];
    [((UIButton *)[self.view viewWithTag:10]) setTitle:@"😊" forState:UIControlStateNormal];
    for (NSInteger i = 0; i < 10; i++) {
        for (NSInteger j = 0; j < 10; j++) {
            ((UIButton *)[self.view viewWithTag:101 + j + 20 * i]).selected = YES;
            [((UIButton *)[self.view viewWithTag:101 + j + 20 * i]) setTitle:@" " forState:UIControlStateSelected];
            [self.dic setObject:@"0" forKey:[NSString stringWithFormat:@"%ld", 101 + j + 20 * i]];
        }
    }
    NSMutableArray *array = [NSMutableArray array];
    while (1) {
        NSInteger a = arc4random() % 200 + 100;
        for (NSInteger i = 0; i < 10; i++) {
            if (a >= 101 + 20 * i && a <= 110 + 20 * i) {
                NSString *temp = [NSString stringWithFormat:@"%ld", a];
                if (![array containsObject:temp]) {
                    [array addObject:temp];
                }
            }
        }
        if (array.count == self.bombNumber) {
            break;
        }
    }
    for (NSInteger i = 0; i < self.bombNumber; i++) {
        NSInteger a = [[array objectAtIndex:i] integerValue];
        [((UIButton *)[self.view viewWithTag:a]) setTitle:@"💣" forState:UIControlStateSelected];
    }
    
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            ((UIButton *)[self.view viewWithTag:101 + j + 20 * i]).backgroundColor = [UIColor colorWithRed:0.792 green:0.784 blue:0.792 alpha:1];
            if (![((UIButton *)[self.view viewWithTag:101 + j + 20 * i]).currentTitle isEqual:@"💣"]) {
                NSInteger currentBombNumber = 0;
                NSInteger tag[8] = {101 + j + 20 * i + 1, 101 + j + 20 * i + 19, 101 + j + 20 * i + 20, 101 + j + 20 * i + 21, 101 + j + 20 * i - 1, 101 + j + 20 * i - 19, 101 + j + 20 * i - 20, 101 + j + 20 * i - 21};
                for (int k = 0; k < 8; k++) {
                    if ([((UIButton *)[self.view viewWithTag:tag[k]]).currentTitle isEqual:@"💣"]) {
                        currentBombNumber++;
                    }
                }
                if (currentBombNumber == 0) {
                    [((UIButton *)[self.view viewWithTag:101 + j + 20 * i]) setTitle:@" " forState:UIControlStateSelected];
                }else{
                    NSString *str = [NSString stringWithFormat:@"%ld", currentBombNumber];
                    [((UIButton *)[self.view viewWithTag:101 + j + 20 * i]) setTitle:str forState:UIControlStateSelected];
                    [((UIButton *)[self.view viewWithTag:101 + j + 20 * i]) setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
                }
            }
            
        }
    }
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            ((UIButton *)[self.view viewWithTag:101 + j + 20 * i]).selected = NO;
        }
    }
    
}

- (void)buttonAction:(UIButton *)button
{
    if (self.isStart) {
        if (button.selected) {
            
        }else{
            if ([self.changeB.backgroundColor isEqual:[UIColor redColor]]) {
                if ([button.backgroundColor isEqual:[UIColor redColor]]) {
                    button.backgroundColor = [UIColor colorWithRed:0.792 green:0.784 blue:0.792 alpha:1];
                    self.bombNumber++;
                }else if([button.backgroundColor isEqual:[UIColor colorWithRed:0.792 green:0.784 blue:0.792 alpha:1]]){
                    button.backgroundColor = [UIColor redColor];
                    self.bombNumber--;
                }
                button.selected = NO;
                self.label.text = [NSString stringWithFormat:@"炸弹数量: %ld", self.bombNumber];
            }else{
                if ([button.backgroundColor isEqual:[UIColor redColor]]) {
                    button.selected = NO;
                }else{
                    button.selected = YES;
                    button.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
                    if ([[button titleForState:UIControlStateSelected] isEqual:@" "]) {
                        [self action:button.tag];
                    }
                    NSInteger a = 0;
                    for (NSInteger i = 0; i < 10; i++) {
                        for (NSInteger j = 0; j < 10; j++) {
                            if(((UIButton *)[self.view viewWithTag:101 + j + 20 * i]).selected == NO){
                                a++;
                            }
                        }
                    }
                    if ([[button titleForState:UIControlStateSelected] isEqual:@"💣"]) {
                        for (int i = 0; i < 10; i++) {
                            for (int j = 0; j < 10; j++) {
                                ((UIButton *)[self.view viewWithTag:101 + j + 20 * i]).selected = YES;
                            }
                        }
                        [((UIButton *)[self.view viewWithTag:10]) setTitle:@"😢" forState:UIControlStateNormal];
                        UIAlertView *al = [[UIAlertView alloc]initWithTitle:@"踩到雷了" message:@"游戏结束" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
                        [al show];
                        [al release];
                        self.isStart = NO;
                        [_time setFireDate:[NSDate distantFuture]];
                        
                    }else if(a == 20){
                        [_time setFireDate:[NSDate distantFuture]];
                        for (int i = 0; i < 10; i++) {
                            for (int j = 0; j < 10; j++) {
                                ((UIButton *)[self.view viewWithTag:101 + j + 20 * i]).selected = YES;
                            }
                        }
                        UIAlertView *al = [[UIAlertView alloc]initWithTitle:@"恭喜你" message:@"游戏胜利" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
                        [al show];
                        [al release];
                        self.isStart = NO;
                    }
                }
            }
        }
    }else{
        UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"警告" message:@"请点击😊开始游戏" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [al show];
        [al release];
    }
}

- (void)action:(NSInteger)k
{
    NSInteger arr[8] = {k - 21, k - 20, k - 19, k - 1, k + 1, k + 19, k + 20, k + 21};
    [self.dic setObject:@"1" forKey:[NSString stringWithFormat:@"%ld", k]];
    for (NSInteger i = 0; i < 8; i++) {
        
        ((UIButton *)[self.view viewWithTag:arr[i]]).selected = YES;
        ((UIButton *)[self.view viewWithTag:arr[i]]).backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
        if ([[((UIButton *)[self.view viewWithTag:arr[i]]) titleForState:UIControlStateSelected] isEqualToString:@" "] && [[self.dic objectForKey:[NSString stringWithFormat:@"%ld", arr[i]]] isEqualToString:@"0"]) {
            [self action:arr[i]];
        }
    }
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
