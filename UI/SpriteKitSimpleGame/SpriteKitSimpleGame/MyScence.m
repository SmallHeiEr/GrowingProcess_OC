//
//  MyScence.m
//  SpriteKitSimpleGame
//
//  Created by dllo on 16/3/5.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "MyScence.h"

#import ""
// 1

@interface MyScence ()

@property (nonatomic) SKSpriteNode * player;


@end
@implementation MyScence

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        
        // 2
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        
        
        // 3
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        
        
        // 4
        self.player = [SKSpriteNode spriteNodeWithImageNamed:@"player"];
        self.player.position = CGPointMake(100, 100);
        [self addChild:self.player];
        
    }
    return self;
}









@end
