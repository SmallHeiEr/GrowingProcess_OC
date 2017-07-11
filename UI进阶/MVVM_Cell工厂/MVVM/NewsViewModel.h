//
//  NewsViewModel.h
//  MVVM
//
//  Created by dllo on 16/4/19.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsViewModel : NSObject
//参数1：名字，因为是参数，所以没名字
//参数2：所带参数类型；
+ (void)getDate:(void(^)(NSMutableArray *arr))newTableArr;

@end
