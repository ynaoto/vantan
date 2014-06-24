//
//  ViewController.m
//  Balls
//
//  Created by Naoto Yoshioka on 2014/06/23.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"
#import "Ball.h"

@interface MyBall : Ball
@property UIView *view;

@end

@implementation MyBall

- (void)draw
{
    self.view.center = CGPointMake(self.x, self.y);
}

@end

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *balls;
}

- (void)tick
{
    for (Ball *ball in balls) {
        [ball move];
        [ball draw];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    int a[] = { 1, 2, 3, 4 };
//    NSArray *aa = @[ @1, @2, @3, @4 ];
//    NSMutableArray *ma = [NSMutableArray arrayWithArray:aa];
    
    balls = [NSMutableArray array];
    
    CGRect frame = self.view.frame;
//    NSValue *valObj = [NSValue valueWithCGRect:self.view.frame];
    int sw = frame.size.width;
    int sh = frame.size.height;
    for (int i = 0; i < 100; i++) {
        MyBall *ball = [[MyBall alloc] init];
        ball.x = arc4random() % sw;
        ball.y = arc4random() % sh;
        ball.vx = 1 - (arc4random() % 3);
        ball.vy = 1 - (arc4random() % 3);
        ball.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        ball.view.backgroundColor = [UIColor redColor];
        [self.view addSubview:ball.view];
        [ball draw];
        [balls addObject:ball];
    }
//    SEL method = @selector(tick);
//    [self tick];
//    [self performSelector:method withObject:<#(id)#> afterDelay:<#(NSTimeInterval)#>]
    [NSTimer scheduledTimerWithTimeInterval:0.1
                                     target:self
                                   selector:@selector(tick)
                                   userInfo:nil
                                    repeats:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
