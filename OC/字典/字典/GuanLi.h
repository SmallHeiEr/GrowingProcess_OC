//
//  GuanLi.h
//  字典
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;
@interface GuanLi : NSObject
@property (nonatomic, copy) NSMutableDictionary *manage;
- (instancetype)init;
- (void)addPer:(Contact *)per;

@end
