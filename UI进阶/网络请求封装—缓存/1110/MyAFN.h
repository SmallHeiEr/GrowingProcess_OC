//
//  MyAFN.h
//  1110
//
//  Created by dllo on 16/4/8.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyAFN : NSObject
//参数1：存到哪     参数2：
+ (void)GETWithTheURL:(NSString *)url success:(void(^)(id responseObject))response filed:(void(^)(id error))err;

@end
