//
//  ViewController.m
//  Timer
//
//  Created by Naoto Yoshioka on 2014/06/30.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)timeout
{
    self.label.text = @"BOMB!";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSNumber *num = @3;
    [NSTimer scheduledTimerWithTimeInterval:[num floatValue]
                                     target:self
                                   selector:@selector(timeout)
                                   userInfo:nil
                                    repeats:NO];
}

@end
