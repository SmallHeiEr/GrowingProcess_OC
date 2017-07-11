//
//  DetailView.m
//  HW6
//
//  Created by dllo on 16/1/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DetailView.h"


@interface DetailView ()
@property (nullable, retain)UIScrollView *scrollV;
@end



@implementation DetailView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubviews];
    }
    return self;
}
- (void)createSubviews
{
    self.scrollV = [[UIScrollView alloc]initWithFrame:self.frame];
    self.scrollV.contentSize = CGSizeMake(414 * 21, 0);
    self.scrollV.contentOffset = CGPointMake(414, 0);
    [self addSubview:self.scrollV];
    [self.scrollV release];
    for (NSInteger i = 0; i < 21; i++) {
        NSString *str = [NSString stringWithFormat:@"image%ld.jpg", i];
        if (0 == i) {
            str = @"image19.jpg";
        } if (20 == i) {
            str = @"image1.jpg";
        }
    
    UIScrollView *subSV = [[UIScrollView alloc]initWithFrame:CGRectMake(i * 414, 0, 414, 736)];
        [self.scrollV addSubview:subSV];
        [subSV release];
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
        imageV.image = [UIImage imageNamed:str];
        [subSV addSubview:imageV];
        [imageV release];
   
    
    }
    
}




@end
