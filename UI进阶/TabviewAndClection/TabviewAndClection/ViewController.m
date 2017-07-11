//
//  ViewController.m
//  TabviewAndClection
//
//  Created by dllo on 16/3/22.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "MainCollectionViewCell.h"
#import "AFNetworking.h"
#import "NewsModel.h"
@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic, retain)UICollectionView *mainCollectionView;
@property (nonatomic, retain)NSMutableDictionary *bigDic;
//@property (nonatomic, retain)NSMutableArray *bigArr;
@end

@implementation ViewController
- (void)dealloc
{
    [_bigDic release];
    [_mainCollectionView release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
#warning 1 创建collectionView
    UICollectionViewFlowLayout *layout = [[[UICollectionViewFlowLayout alloc]init]autorelease];

    layout.itemSize = self.view.frame.size;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//间距为0
    layout.minimumLineSpacing = 0;

    self.mainCollectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    self.mainCollectionView.backgroundColor = [UIColor cyanColor];
    self.mainCollectionView.delegate = self;
    self.mainCollectionView.dataSource = self;
//    整页滚动
    self.mainCollectionView.pagingEnabled = YES;

    [self.view addSubview:self.mainCollectionView];
    [self.mainCollectionView release];
    //    关闭边缘反弹
    self.mainCollectionView.bounces = NO;
#warning 创建自定义cell
    
    
    [self.mainCollectionView registerClass:[MainCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    
    
#warning 4 请求数据
    // 先拿网址（HomePage.json）
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"HomePage" ofType:@"json"];
    
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];
    
    NSArray *jsonArr = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
//    NSLog(@"%@", jsonArr);
    self.bigDic = [NSMutableDictionary dictionary];
    for (NSDictionary *dic in jsonArr) {
        NSString *url = dic[@"URL"];
        NSString *dicKey = dic[@"dicKey"];
        NSString *type = dic[@"type"];
        AFHTTPSessionManager *man = [AFHTTPSessionManager manager];
        [man.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"text/html", nil]];
        
        
        [man GET:url parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
//            NSLog(@"%@", responseObject);
            NSArray *smallArr = responseObject[dicKey];
//               因为在for里，，，又因有5个URL，所以5次网络请求， 我们将5个tableView的数据都各自放到一个数组中，将5个小数组放到大数组中
             NSMutableArray *smallTableArr = [NSMutableArray array];
            
            for (NSDictionary *dic in smallArr) {
                NewsModel *new = [[NewsModel alloc]init];
                [new setValuesForKeysWithDictionary:dic];
//            一个小数组里面放一个页面的URL请求回来的数据
                [smallTableArr addObject:new];
               
             }
            [self.bigDic setObject:smallTableArr forKey:type];
//            [_bigArr addObject:self.bigDic];
//            reloadData 把协议方法再走一遍，
            [self.mainCollectionView reloadData];
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
//            NSLog(@"%@", error);
            
        }];
    }
    
    
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.bigDic.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //cell初始化的时候， 因为tableview创建的时候，签了代理人， 协议方法会走，但是这个时候tableview的数据源数组还没有传值过去
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:0.154 green:1.000 blue:0.090 alpha:1.000];
    

    NSMutableArray *arr = [self.bigDic objectForKey:[@(indexPath.item) description]];
    cell.collectionArr = arr;
    //数组传值之后，再让tableview重新走一遍协议方法
    
    [cell.mainTableV reloadData];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
