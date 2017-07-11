//
//  Person.h
//  MyRunTime
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    
    NSInteger _telephone;
}
@property (nonatomic, strong)NSString *name;
@property (nonatomic, assign)NSInteger age;
- (void)getname;
+ (Person *)modelWithDic:(NSDictionary *)dic;
- (void)setVideoForKey:(NSDictionary *)dic;

@end
