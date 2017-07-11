//
//  ViewController.m
//  UI21_不规则瀑布流
//
//  Created by dllo on 16/3/9.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "CollectionViewCell.h"
#import "Model.h"
#import "SetCollectionViewLayout.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, SetCollectionViewLayoutDelegate>
@property (nonatomic, retain) UICollectionView *collectionV;
@property (nonatomic, retain) NSMutableArray *modArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getDate];
    self.view.backgroundColor = [UIColor whiteColor];
    //    UICollectionViewFlowLayout是一个抽象类，一般使用他的子类
    SetCollectionViewLayout *flowl = [[[SetCollectionViewLayout alloc]init]autorelease];
    flowl.delegate = self;
    flowl.interitemCount = 3;
    flowl.interitemSpacing = 10;
    flowl.lineSpacing = 10;
    flowl.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
//    //    最小行间距  //垂直于滚动方向的叫做行
//    flowl.minimumLineSpacing = 10;
//    //    最小列间距
//    flowl.minimumInteritemSpacing = 10;
//    //    单元大小
//    flowl.itemSize = CGSizeMake(120, 180);
//     //    与屏幕四边的距离
//    flowl.sectionInset = UIEdgeInsetsMake(10, 5, 10, 5);
//    //    滚动方向
//    flowl.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    
    self.collectionV = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:flowl];
    
    self.collectionV.backgroundColor = [UIColor cyanColor];
    self.collectionV.delegate = self;
    self.collectionV.dataSource = self;
    [self.view addSubview:self.collectionV];
    [self.collectionV release];
    
    //    注册cell（重用）
    [self.collectionV registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
  
    
}

- (void)getDate
{
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Data" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSArray *arr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    self.modArr = [NSMutableArray array];
    for (NSMutableDictionary *dic in arr) {
        Model *model = [[Model alloc]init];
        [model setValuesForKeysWithDictionary:dic];
        [self.modArr addObject:model];
        [model release];
    }
    [self.collectionV reloadData];
}
- (CGFloat)heightWithIndexPath:(NSIndexPath *)indexPath Width:(CGFloat)width
{
    Model *model = [self.modArr objectAtIndex:indexPath.row];
    //高度 = 原高/原宽*实际宽度
    CGFloat height = [model.height doubleValue] / [model.width doubleValue] *width;
    return height;
    
}



- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld, %ld", indexPath.row, indexPath.section);
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.modArr.count;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.model =[self.modArr objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
