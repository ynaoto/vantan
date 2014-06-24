//
//  Ball.h
//  Balls
//
//  Created by Naoto Yoshioka on 2014/06/23.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ball : NSObject
@property CGFloat x, y;
@property CGFloat vx, vy;

- (void)draw;
- (void)move;

@end
