//
//  Student.h
//  排序
//
//  Created by dllo on 16/1/7.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger number;
@property (nonatomic, assign) CGFloat mark;
- (instancetype)initWithName:(NSString *)name number:(NSInteger)number mark:(CGFloat)mark;
- (NSComparisonResult)comWithName:(Student *)stu;
- (NSComparisonResult)comWithNumber:(Student *)stu;
- (NSComparisonResult)comWithMark:(Student *)stu;
@end
