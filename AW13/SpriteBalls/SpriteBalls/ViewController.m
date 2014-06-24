//
//  ViewController.m
//  SpriteBalls
//
//  Created by Naoto Yoshioka on 2014/06/23.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"
#import "Ball.h"

@interface MyScene : SKScene

@end

@implementation MyScene
{
    NSMutableArray *balls;
}

- (void)didMoveToView:(SKView *)view
{
    balls = [NSMutableArray array]; ///
//    balls = [[NSMutableArray alloc] init];
    int sw = self.size.width;
    int sh = self.size.height;
    for (int i = 0; i < 100; i++) {
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithColor:[UIColor redColor] size:CGSizeMake(20, 20)];
        Ball *ball = [Ball spriteNodeWithColor:[UIColor redColor] size:CGSizeMake(20, 20)];
        int x = arc4random() % sw;
        int y = arc4random() % sh;
        ball.position = CGPointMake(x, y);
        ball.vx = 1 - (arc4random() % 3);
        ball.vy = 1 - (arc4random() % 3);
        [balls addObject:ball];
        [self addChild:ball];
    }
}

- (void)update:(NSTimeInterval)currentTime
{
    int sw = self.size.width;
    int sh = self.size.height;
    for (Ball *ball in balls) {
        int x = (int)(ball.position.x + ball.vx) % sw;
        int y = (int)(ball.position.y + ball.vy) % sh;
        ball.position = CGPointMake(x, y);
    }
}

@end

@interface ViewController ()
{
    MyScene *myScene;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    SKView *skView = self.view;
    myScene = [MyScene sceneWithSize:self.view.frame.size];
    skView.showsFPS = YES;
    [skView presentScene:myScene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
