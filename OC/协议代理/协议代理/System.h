//
//  System.h
//  协议代理
//
//  Created by dllo on 16/1/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
//2.提供外面实现方法功能
@protocol key <NSObject>
- (void)functionHandle;
@end
@interface System : NSObject
//3.提供外面注册对象
@property (nonatomic, assign) id<key> delegate;
- (void)returnHandle;
**************************************************
@property (nonatomic, assign) id<key> delegate;




@protocol key <NSObject>
- (void)functionHangle;
@end
@interface System : NSObject
@property (nonatomic, assign) id<key> delegate;
- (void)returnHandle;

@protocol key <NSObject>
- (void)functionHangle;
@end
@interface System : NSObject
@property (nonatomic, assign) id<key> delegate;
- (void)returnHandle;
@end

@protocol key <NSObject>
- (void)functionHangle;


















































@end
