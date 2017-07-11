//
//  ViewController.m
//  UI_16初级数据持久化
//
//  Created by dllo on 16/3/2.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
//    Documents - 存储用户数据，需要备份的信息
//    Library/Caches - 存储缓存文件，程序专用的支持文件
//    Library/Preferences - 储存应用程序的偏好设置文件
//    tmp - 存储临时文件， 如下载的zip包（解压后再删除）
    NSLog(@"%@", NSHomeDirectory());

//    获取文件路径
//    NSHomeDirectory() - 沙盒主路径
//    NSDocumentDirectory - Documents文件夹
//    NSLibraryDirectory - Library文件夹
//    NSCachesDirectory - Caches文件夹
//    NSTemporaryDirectory() - tmp文件夹
//    参数2：在哪个文件系统下索引这个路径
//    参数3：绝对/相对路径
   NSString *fileStr = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    
    NSString *filePath = [fileStr stringByAppendingPathComponent:@"str.txt"];
    
    NSString *str = @"斑点🐶";
    
//    功能：将内容写入文件内；
//    参数1：文件路径
//    参数2：是否原子保护
//    参数3：编码
//    参数4：错误信息
    
//    [str writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
//    
//    NSString *backStr = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
//    NSLog(@"读出的内容为：%@", backStr);
    
    NSString *str1 = @"longlong";
    NSArray *arr = @[str, str1];
    [arr writeToFile:filePath atomically:YES];
    
    NSString *backStr = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    NSArray *backArr = [NSArray arrayWithContentsOfFile:filePath];
    NSLog(@"%@", backArr);
//    NSLog(@"读出的内容为：%@", backStr);
    
    
//    储存复杂类型数据
    Student *stu = [[Student alloc]init];
    stu.name =@"班长";
    stu.sex = @"男";
    stu.num = 1;
    stu.score = 0;
    
    NSString *stuPath = [fileStr stringByAppendingPathComponent:@"stu.aaa"];

//    存储复杂类型数据要进行归档，读取进行反归档；
//    归档会调用NSCoding协议方法，需要在student类中实现
    [NSKeyedArchiver archiveRootObject:stu toFile:stuPath];
    
    [NSKeyedUnarchiver unarchiveObjectWithFile:stuPath];
    NSLog(@"%@ %@ %ld %.1f", stu.name, stu.sex, stu.num, stu.score);
    

    
    //文件操作部分
 

    NSString *cachStr = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
    NSString *cachPath = [cachStr stringByAppendingPathComponent:@"stu.bbb"];
//    文件管理
    NSFileManager *mgr = [NSFileManager defaultManager];
//    将stu.aaa剪切到cach文件夹下并改名为stu.bbb
    [mgr moveItemAtPath:stuPath toPath:cachPath error:nil];
//    判断文件是否存在
    BOOL ret = [mgr fileExistsAtPath:cachPath];
    NSLog(@"%d", ret);
//    拷贝文件，     用法参照剪切
    //mgr copyItemAtPath:cachPath toPath:<#(nonnull NSString *)#> error:<#(NSError * _Nullable * _Nullable)#>
//    删除文件
//    [mgr removeItemAtPath:cachPath error:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
