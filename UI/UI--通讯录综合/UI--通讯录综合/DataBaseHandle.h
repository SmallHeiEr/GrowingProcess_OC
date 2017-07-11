//
//  DataBaseHandle.h
//  UI--通讯录综合
//
//  Created by dllo on 16/1/27.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataBaseHandle : NSObject
@property (nonatomic, retain) NSMutableDictionary *stuInfoDic;
@property (nonatomic, retain) NSMutableArray *arr1;
+ (instancetype)shareDataBase;
@end
