//
//  ViewController.m
//  Dice1
//
//  Created by Naoto Yoshioka on 2014/06/30.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
{
    NSArray *_imageNames;
    int _eye;
}

- (void)updateEye
{
    int n = arc4random() % _imageNames.count;
    self.imageView.image = [UIImage imageNamed:_imageNames[n]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _imageNames = @[
                @"one", @"two", @"three",
                @"four", @"five", @"six",
                ];
    [self updateEye];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)roll:(id)sender {
    [self updateEye];
}

@end
