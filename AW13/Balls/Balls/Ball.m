//
//  Ball.m
//  Balls
//
//  Created by Naoto Yoshioka on 2014/06/23.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "Ball.h"

@implementation Ball

- (void)draw
{
    // do nothing
}

- (void)move
{
    self.x += self.vx;
    self.y += self.vy;
}

@end
