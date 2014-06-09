//
//  ViewController.m
//  SKSample
//
//  Created by Naoto Yoshioka on 2014/06/09.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "MyScene.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SKView *skView;

@end

@implementation ViewController
{
    MyScene *_myScene;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _myScene = [MyScene sceneWithSize:self.skView.frame.size];
    [_myScene configure];
    [self.skView presentScene:_myScene];
    self.skView.showsFPS = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
