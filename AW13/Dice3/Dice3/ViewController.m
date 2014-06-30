//
//  ViewController.m
//  Dice3
//
//  Created by Naoto Yoshioka on 2014/06/30.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *rollButton;

@end

@implementation ViewController
{
    NSArray *_imageNames;
    int _eye;
    int _intervalIndex;
    NSArray *_intervals;
    AVAudioPlayer *_soundPlayer;
}

- (void)updateEye
{
    int n = arc4random() % _imageNames.count;
    self.imageView.image = [UIImage imageNamed:_imageNames[n]];
}

- (void)roll
{
    _soundPlayer.currentTime = 0;
    [_soundPlayer play];
    [self updateEye];
    if (_intervalIndex < _intervals.count) {
        NSNumber *interval = _intervals[_intervalIndex];
        [NSTimer scheduledTimerWithTimeInterval:[interval floatValue]
                                         target:self
                                       selector:@selector(roll)
                                       userInfo:nil
                                        repeats:NO];
        _intervalIndex++;
    } else {
        self.rollButton.enabled = YES;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _imageNames = @[
                    @"one", @"two", @"three",
                    @"four", @"five", @"six",
                    ];
    _intervals = @[
                   @0.1, @0.2, @0.3, @0.4, @0.5,
                   @0.6, @0.7, @0.8, @0.9, @1.0,
                   ];
    [self updateEye];
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSURL *url;
    
    url = [mainBundle URLForResource:@"RS"
                       withExtension:@"mp3"];
    _soundPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url
                                                          error:nil];
    [_soundPlayer prepareToPlay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)roll:(id)sender {
    _intervalIndex = 0;
    self.rollButton.enabled = NO;
    [self roll];
}

@end
