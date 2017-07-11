//
//  SetCollectionViewLayout.m
//  UI21_不规则瀑布流
//
//  Created by dllo on 16/3/9.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "SetCollectionViewLayout.h"

@interface SetCollectionViewLayout()
@property (nonatomic, retain) NSMutableArray *itemArr;
@property (nonatomic, retain) NSMutableDictionary *widthDic;
@end

@implementation SetCollectionViewLayout
- (void)dealloc
{
    [_widthDic release];
    [_itemArr release];
    [super dealloc];
}
#warning 2,系统方法，初始化开变量空间；
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.itemArr = [NSMutableArray array];
        self.widthDic = [NSMutableDictionary dictionary];
    }
    return self;
}
#warning 3,系统方法， item布局前准备方法。只在布局前调用一次


- (void)prepareLayout
{
    [super prepareLayout];
    
    
    
    for (NSInteger i = 0; i < self.interitemCount; i++) {
        NSNumber *val = [NSNumber numberWithDouble:self.sectionInset.left];
        NSString *key = [NSString stringWithFormat:@"%ld", i];

        [self.widthDic setObject:val forKey:key];
    }
    
    
    
    //系统的collectionView属性，指向布局对象添加到的CollectionView
//    numberOfItemsInSection系统方法，某一分区下的item数
    for (NSInteger i = 0; i < [self.collectionView numberOfItemsInSection:0]; i++) {
       
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        
      __block NSString *minwidthKey = @"0";
        
        [self.widthDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          
            //获取最短的val
           if ([obj doubleValue] < [[self.widthDic objectForKey:minwidthKey] doubleValue])
           {
               minwidthKey = key;
           }
            
        }];
    //计算坐标和大小
//       高度 = （屏幕高度 - 上间距 - 下间距 - 列间距 * （列数 - 1））/列数
        
        CGFloat height = ([UIScreen mainScreen].bounds.size.height - self.sectionInset.bottom - self.sectionInset.top - self.interitemSpacing * (self.interitemCount - 1)) / self.interitemCount;
        
        
        
        //x = 左间距 + （item宽度 + 列间距） * 最短item所在序号
        CGFloat y = self.sectionInset.top + (height + self.interitemSpacing) * [minwidthKey integerValue];
//        y = 字典中对应的最小高度（注意添加间距）
        CGFloat x = [[self.widthDic objectForKey:minwidthKey] doubleValue];
        
        CGFloat width = [self.delegate widthWithIndexPath:indexPath height:height];
        
        NSNumber *widthVal = [NSNumber numberWithDouble:(width + self.lineSpacing) + x];
        [self.widthDic setObject:widthVal forKey:minwidthKey];
        
        UICollectionViewLayoutAttributes *attribute = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
        attribute.frame = CGRectMake(x , y, width, height);
        
        [self.itemArr addObject:attribute];
    }
}


#warning 1,系统方法，返回给系统所有的item大小及坐标
- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return self.itemArr;
}
#warning 4,系统方法，设置滚动范围
- (CGSize)collectionViewContentSize
{
    //获取最高列的高度
    __block NSString *maxwidthKey = @"0";
    [self.widthDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        if ([obj doubleValue] > [[self.widthDic objectForKey:maxwidthKey] doubleValue]) {
            maxwidthKey = key;
        }
    }];
    CGFloat width = [[self.widthDic objectForKey:maxwidthKey] doubleValue];
    return CGSizeMake(width, 0);
}





@end
