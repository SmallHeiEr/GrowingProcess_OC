//
//  ViewController.m
//  UI20_UICollectionView
//
//  Created by dllo on 16/3/8.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic, retain)UICollectionView *collectionV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
//    UICollectionViewFlowLayout是一个抽象类，一般使用他的子类
    UICollectionViewFlowLayout *flowl = [[[UICollectionViewFlowLayout alloc]init]autorelease];
    
    
//    最小行间距  //垂直于滚动方向的叫做行  
    flowl.minimumLineSpacing = 100;
//    最小列间距
    flowl.minimumInteritemSpacing = 20;
//    单元大小
    flowl.itemSize = CGSizeMake(150, 240);
////    区头间距
//    flowl.headerReferenceSize = CGSizeMake(50, 50);
////    区脚间距
//    flowl.footerReferenceSize = CGSizeMake(50, 50);
//    与屏幕四边的距离
    flowl.sectionInset = UIEdgeInsetsMake(100, 20, 50, 20);
//    滚动方向
    flowl.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    
    self.collectionV = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:flowl];
    
    self.collectionV.backgroundColor = [UIColor cyanColor];
    self.collectionV.delegate = self;
    self.collectionV.dataSource = self;
    [self.view addSubview:self.collectionV];
    [self.collectionV release];
    
//    注册cell（重用）
    [self.collectionV registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
//    [self.collectionV registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"headerView"];
//    [self.collectionV registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footerView"];
    
}
////返回头视图还是尾视图
//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//{
//    //判断返回头视图还是尾视图
//    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
//        UICollectionReusableView *headerV = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"headerView" forIndexPath:indexPath];
//        headerV.backgroundColor = [UIColor yellowColor];
//        return headerV;
//    }
//    else {
//        UICollectionReusableView *footerV = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footerView" forIndexPath:indexPath];
//        footerV.backgroundColor = [UIColor redColor];
//        return footerV;
//
//    }
//}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld, %ld", indexPath.row, indexPath.section);
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 30;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor yellowColor];
//    cell.label.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
