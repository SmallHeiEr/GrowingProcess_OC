//
//  CoreDataManager.h
//  UI_MyCoreData
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataManager : NSObject

//数据管理器（和数据打交道，也是我们常用的）
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

//数据模型器
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;

//数据链接器（coreData中把model，sqlite，managedObjectContext关联在一起）
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

+ (CoreDataManager *)defaultManager;
@end
