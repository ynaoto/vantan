//
//  MyScene.m
//  SKSample
//
//  Created by Naoto Yoshioka on 2014/06/09.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene
{
    SKSpriteNode *_redNode;
    SKSpriteNode *_greenNode;
    SKSpriteNode *_blueNode;
}

- (void)configure
{
    _redNode = [SKSpriteNode spriteNodeWithColor:[UIColor redColor]
                                            size:CGSizeMake(100, 100)];
    [self addChild:_redNode];
    
//    _blueNode = [SKSpriteNode spriteNodeWithColor:[UIColor blueColor]
//                                             size:CGSizeMake(100, 100)];
    _blueNode = [SKSpriteNode spriteNodeWithImageNamed:@"eye"];
    _blueNode.position = CGPointMake(100, 100);
    _blueNode.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_blueNode.size];
    _blueNode.physicsBody.dynamic = NO;
    [self addChild:_blueNode];
    
//    _greenNode = [SKSpriteNode spriteNodeWithColor:[UIColor greenColor]
//                                              size:CGSizeMake(100, 100)];
    _greenNode = [SKSpriteNode spriteNodeWithImageNamed:@"onion"];
    _greenNode.position = CGPointMake(200, 200);
    _greenNode.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_greenNode.size];
//    _greenNode.physicsBody.dynamic = NO;
    [self addChild:_greenNode];

    SKSpriteNode *spriteNode;
    spriteNode = [SKSpriteNode spriteNodeWithImageNamed:@"onion"];
    spriteNode.position = CGPointMake(100, 200);
    spriteNode.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:spriteNode.size];
    [self addChild:spriteNode];

    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
    self.physicsWorld.gravity = CGVectorMake(0, -0.1);
}

- (void)update:(NSTimeInterval)currentTime
{
    CGPoint p;
    
    p = _redNode.position;
    p.y = ((int)p.y + 1) % (int)self.frame.size.height;
    _redNode.position = p;

    p = _blueNode.position;
    p.x = ((int)p.x + 1) % (int)self.frame.size.width;
    _blueNode.position = p;
}

@end
