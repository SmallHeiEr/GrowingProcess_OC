//
//  ViewController.m
//  UI_22线程
//
//  Created by dllo on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "MyOperation.h"
#import "DataBaseHandle.h"

@interface ViewController ()


@property (nonatomic, retain) UIImageView *imageV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *threadB = [UIButton buttonWithType:UIButtonTypeSystem];
    threadB.frame = CGRectMake(100, 100, 80, 30);
    [threadB setTitle:@"NSThread" forState:UIControlStateNormal];
    [threadB addTarget:self action:@selector(threadAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:threadB];
    
    UIButton *objectB = [UIButton buttonWithType:UIButtonTypeSystem];
    objectB.frame = CGRectMake(100, 200, 80, 30);
    [objectB setTitle:@"NSObject" forState:UIControlStateNormal];
    [objectB addTarget:self action:@selector(objectAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:objectB];
    
    UIButton *operationB = [UIButton buttonWithType:UIButtonTypeSystem];
    operationB.frame = CGRectMake(100, 300, 100, 30);
    [operationB setTitle:@"NSOperation" forState:UIControlStateNormal];
    [operationB addTarget:self action:@selector(operationAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:operationB];
    
    UIButton *gcdB = [UIButton buttonWithType:UIButtonTypeSystem];
    gcdB.frame = CGRectMake(100, 400, 80, 30);
    [gcdB setTitle:@"GCD" forState:UIControlStateNormal];
    [gcdB addTarget:self action:@selector(gcdAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:gcdB];
    
    self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(50, 500, 300, 200)];
    [self.view addSubview:self.imageV];
    [self.imageV release];
    
    
    
}

//一个应用至少有一个（或多个）进程，进程活跃状态说明但前软件正在运行
//一个进程在手机里一般就代表一个应用
//一个进程要执行很多的线程（任务），一个线程代表正在执行一个或多个任务



- (void)gcdAction
{
    //GCD：（grand，central，dispatch）特点，非常强大的多线程，充分利用了系统的多核， 底层是C语言，使用起来方便，效率高，是苹果公司在IOS4时推出的，到目前非常成熟，是用来代替前面的多线程的。
    
    //创建自己的队列
//    参数1:标示；
//    参数2:DISPATCH_QUEUE_CONCURRENT ——并行
//         DISPATCH_QUEUE_SERIAL ---串行
    
    dispatch_queue_t myQ = dispatch_queue_create("myQueue", DISPATCH_QUEUE_SERIAL);
//    向队列添加任务
    dispatch_async(myQ, ^{
        
        [self thAction];
    });
    dispatch_async(myQ, ^{
        for (NSInteger i = 0; i < 6000; i++) {
            NSLog(@"第二个分支线程:%ld", i);
        }
    });
    
    //出自定义队列外，系统提供了5个队列，，一个串行队列，，4个并行队列
//    一个串行：主队列，专门管理主线程
//    4个并行队列：全局队列（单例方式实现），具有不同的优先级
    
    //获取主队列
    dispatch_queue_t mainQ = dispatch_get_main_queue();
    
//    获取全局队列
//    参数1:优先级
//    参数2:预留参数，只能填0
    
    
    dispatch_queue_t globalQ = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);

    
    dispatch_async(globalQ, ^{
        
        NSURL *url = [NSURL URLWithString:@"http://c.hiphotos.baidu.com/baike/w%3D268/sign=1396d7c49922720e7bcee5fc43ca0a3a/b3119313b07eca807f594b41902397dda044ad345982ab0b.jpg"];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
//        分支线程对界面处理的优先级低，所以UI界面操作要放到主线程上
        dispatch_async(mainQ, ^{
            self.imageV.image = image;

            
        });
        
        
    });
    
   static dispatch_once_t once = 0;
    dispatch_once(&once, ^{
        NSLog(@"只执行一次");
        
    });
    
    
    
    
    
}
- (void)operationAction
{
//    NSOperation是用来管理具体任务的类，但它是一个抽象类，我们一般用他的子类们创建线程
    NSInvocationOperation *op1 = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(thAction) object:nil];
    
     NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
//         [NSThread sleepForTimeInterval:3.0];
//         NSLog(@"op2休眠结束");
             for (NSInteger i = 0; i < 6000; i++) {
                 NSLog(@"op2线程:%ld", i);
             }
         
     }];
    
    MyOperation *op3 = [[MyOperation alloc] init];
    
    
    
    //NSOperationQueue队列主要是用来执行任务的， 会讲系统的闲置队列拿来使用，节省系统资源
//    队列一般分：串行和并行
//    串行队列：一个一个执行任务（排队做事情）
//    并行队列：多个任务同时进行，谁先完成不一定
//    注意，：串行队列可以在主线程上执行，也可以在子线程上执行，但并行队列只能在子线程上执行
//    创建队列，默认是子线程
    
//    优点：不需要我们操心线程管理和数据同步等事情
//    缺点：执行效率不是特别高
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
#warning     注意:添加之前写要求(属性)，否则失效
    //设置队列任务依赖关系
//    op2等待op1执行完才执行（实现串行， 实现优先级）
    [op2 addDependency:op1];
    
//    设置最大并发数
    [queue setMaxConcurrentOperationCount:1];
    
    
   [queue addOperation:op1];
   [queue addOperation:op2];
    [queue addOperation:op3];

   [op1 release];
    [op3 release];

    NSBlockOperation *block = [NSBlockOperation blockOperationWithBlock:^{
       
        NSLog(@"block是否在主线程上执行：%d", [NSThread isMainThread]);
        
    }];
    
    [[NSOperationQueue mainQueue] addOperation:block];
    
}
- (void)objectAction
{
//    优点：使用简单
//    缺点:没有线程安全方面的控制
    
    [self performSelectorInBackground:@selector(thAction) withObject:nil];
    [NSThread sleepForTimeInterval:2.0];
    NSLog(@"主线程休眠结束");

}

- (void)threadAction
{
    
    
    
    //NSThread系统提供的轻量级线程方式
//    优点：创建简单
//    缺点:提供了太多需要自己设置的操作，需要对线程特别了解
    
//    创建一个线程
    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(thAction) object:nil];
    
//    开始执行线程
    [thread start];
    [thread release];
    NSLog(@"主线程%@", [NSThread mainThread]);
    NSLog(@"判断是否为主线程%d", [NSThread isMainThread]);
//    for (NSInteger i = 0; i < 600000000; i++) {
//        NSLog(@"主线程:%ld", i);
//    }
    [NSThread sleepForTimeInterval:2.0];
    NSLog(@"主线程休眠结束");
    
    
    
}

- (void)thAction
{
    NSLog(@"当前线程：%@", [NSThread currentThread]);
    for (NSInteger i = 0; i < 6000; i++) {
        NSLog(@"分线程:%ld", i);
    }
//    线程休眠
//    [NSThread sleepForTimeInterval:1.0];
//    NSLog(@"分支线程休眠结束");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
