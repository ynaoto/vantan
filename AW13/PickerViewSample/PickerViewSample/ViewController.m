//
//  ViewController.m
//  PickerViewSample
//
//  Created by Naoto Yoshioka on 2014/07/14.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@end

@implementation ViewController
{
    NSArray *_dataArray;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return _dataArray.count;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSArray *a = _dataArray[component];
    return a.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray *a = _dataArray[component];
    return a[row];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    _dataArray = @[
//                   @[ @"A", @"B", @"C" ],
//                   @[ @"1", @"2", @"3", @"4", @"5" ],
//                   @[ @"あ", @"い", @"う", @"え", @"お"],
//                   ];
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSURL *url = [mainBundle URLForResource:@"data" withExtension:@"plist"];
    _dataArray = [NSArray arrayWithContentsOfURL:url];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
