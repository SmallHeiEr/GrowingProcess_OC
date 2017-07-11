//
//  ViewController.m
//  UI1_解析
//
//  Created by dllo on 16/2/29.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "JSONKit.h"
#import "GDataXMLNode.h"

@interface ViewController () <NSXMLParserDelegate>
@property (nonatomic, retain) NSMutableArray *stuArr;
@property (nonatomic, retain) NSString *elementstr;
@end

@implementation ViewController
- (void)dealloc
{
    [_elementstr release];
    [_stuArr retain];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *jsonB = [UIButton buttonWithType:UIButtonTypeSystem];
    jsonB.frame = CGRectMake(100, 100, 80, 30);
    [jsonB setTitle:@"JSON解析" forState:UIControlStateNormal];
    [jsonB addTarget:self action:@selector(jsonBAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jsonB];
    UIButton *jsonX = [UIButton buttonWithType:UIButtonTypeSystem];
    jsonX.frame = CGRectMake(100, 200, 120, 30);
    [jsonX setTitle:@"XML解析/SAX" forState:UIControlStateNormal];
    [jsonX addTarget:self action:@selector(jsonXAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jsonX];
    UIButton *domX = [UIButton buttonWithType:UIButtonTypeSystem];
    domX.frame = CGRectMake(100, 300, 120, 30);
    [domX setTitle:@"XML解析/DOM" forState:UIControlStateNormal];
    [domX addTarget:self action:@selector(domXAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:domX];
    
}
//SAX和DOM对比：
//SAX逐行解析，有点事占用内存空间少，缺点是不灵活，必须一行一行解析
//DOM先全部读入内存，在分别进行解析，优点是灵活，全部读入后可针对性的进行解析，缺点是占用内存空间大
//XML解析/DOM
- (void)domXAction
{
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Student" ofType:@"xml"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    self.stuArr = [NSMutableArray array];
    //参数1：解析内容
//    参数2：预留参数，写0
//    参数3：错误信息，若不需要可填写nil
    GDataXMLDocument *xmlD = [[GDataXMLDocument alloc]initWithData:data options:0 error:nil];
    
    GDataXMLElement *xmlE = xmlD.rootElement;
//    NSLog(@"整体信息%@", xmlE);
    
    for (GDataXMLElement *subXmlE in xmlE.children) {
//        NSLog(@"每名学生的整体信息：%@", subXmlE);
//        创建student的时机
        Student *stu = [Student alloc];
        [self.stuArr addObject:stu];
        [stu release];
        for (GDataXMLElement *element in subXmlE.children) {
//            NSLog(@"学生的每条信息%@", element);
            NSLog(@"%@ %@", element.name, element.stringValue);
//            为每名学生设置信息
            [stu setValue:element.stringValue forKey:element.name];
        }
    }
    [xmlD release];
}
//XML解析/SAX
- (void)jsonXAction
{
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Student" ofType:@"xml"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSXMLParser *parser = [[NSXMLParser alloc]initWithData:data];
    parser.delegate = self;
    //开始解析
    [parser parse];
    
}
- (void)parserDidStartDocument:(NSXMLParser *)parser;
{
//    NSLog(@"Start");
    self.stuArr = [NSMutableArray array];
}
- (void)parserDidEndDocument:(NSXMLParser *)parser;
{
//    NSLog(@"End");
    for (Student *stu in self.stuArr) {
        NSLog(@"%@ %@ %@ %@", stu.number, stu.name, stu.sex, stu.phone);
    }
}
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName attributes:(NSDictionary<NSString *, NSString *> *)attributeDict
{
//    NSLog(@"只解析开始标签:%@", elementName);
    //若开始标签为“student”，代表是新的一名学生的信息，此时添加新的学生对象
    if ([elementName isEqualToString:@"student"]) {
        Student *stu = [[Student alloc]init];
        [self.stuArr addObject:stu];
        [stu release];
    }
//    else if ([elementName isEqualToString:@"name"] || [elementName isEqualToString:@"number"] || [elementName isEqualToString:@"sex"] || [elementName isEqualToString:@"name"])
//    {
        self.elementstr = elementName;
//    }
        
    
}
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName
{
//    NSLog(@"只解析结束标签:%@", elementName);
    
    self.elementstr = nil;
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
//    NSLog(@"解析标签值%@", string);
//    为最后一个学生对象添加
    Student *stu = self.stuArr.lastObject;
    [stu setValue:string forKey:self.elementstr];
    
//    if ([self.elementstr isEqualToString:@"number"]) {
//        stu.number = string;
//    }
//    if ([self.elementstr isEqualToString:@"name"]) {
//        stu.name = string;
//    }
//    if ([self.elementstr isEqualToString:@"sex"]) {
//        stu.sex = string;
//    }
//    if ([self.elementstr isEqualToString:@"phone"]) {
//        stu.phone = string;
//    }
}
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError
{
//    出现错误时系统自动调用此方法
    NSLog(@"不可恢复的错误");
}
//JSON
- (void)jsonBAction
{
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Student" ofType:@"txt"];
    //读取文件内容 - NSData为二进制流，好处是安全
    NSData *data = [NSData dataWithContentsOfFile:filePath];
//    json对data解析，以我们识别的格式返回完整的信息
//    参数1：要解析的数据
//    参数2：解析方法，返回可变的数据类型
//    参数3：返回的错误信息，不需要可设置nil
//   NSMutableArray *arr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
//    第三方JSON解析
    NSMutableArray *arr = [data objectFromJSONData];
//    NSLog(@"%@", arr);
    //存入自己的model
    self.stuArr = [NSMutableArray array];
    for (NSDictionary *dic in arr) {
        Student *stu = [[Student alloc]init];
        [stu setValuesForKeysWithDictionary:dic];
        [self.stuArr addObject:stu];
        [stu release];
    }
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
