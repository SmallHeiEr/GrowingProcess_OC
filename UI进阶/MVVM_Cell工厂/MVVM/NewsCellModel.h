//
//  NewsModel.h
//  MVVM_1
//
//  Created by 李东旭 on 16/4/19.
//  Copyright © 2016年 李东旭. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Ads,Imgextra;
@interface NewsCellModel : NSObject

@property (nonatomic, copy) NSString *tname;

@property (nonatomic, copy) NSString *ptime;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray<Imgextra *> *imgextra;

@property (nonatomic, copy) NSString *photosetID;

@property (nonatomic, copy) NSString *postid;

@property (nonatomic, assign) NSInteger hasHead;

@property (nonatomic, assign) NSInteger hasImg;

@property (nonatomic, copy) NSString *lmodify;

@property (nonatomic, copy) NSString *docid;

@property (nonatomic, copy) NSString *template;

@property (nonatomic, assign) NSInteger replyCount;

@property (nonatomic, assign) NSInteger votecount;

@property (nonatomic, copy) NSString *alias;

@property (nonatomic, assign) BOOL hasCover;

@property (nonatomic, assign) NSInteger priority;

@property (nonatomic, copy) NSString *skipType;

@property (nonatomic, copy) NSString *cid;

@property (nonatomic, assign) NSInteger hasAD;

@property (nonatomic, copy) NSString *imgsrc;

@property (nonatomic, assign) BOOL hasIcon;

@property (nonatomic, strong) NSArray<Ads *> *ads;

@property (nonatomic, copy) NSString *ename;

@property (nonatomic, copy) NSString *skipID;

@property (nonatomic, copy) NSString *boardid;

@property (nonatomic, assign) NSInteger order;

@property (nonatomic, copy) NSString *digest;

@end
@interface Ads : NSObject

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, copy) NSString *tag;

@property (nonatomic, copy) NSString *imgsrc;

@end

@interface Imgextra : NSObject

@property (nonatomic, copy) NSString *imgsrc;

@end