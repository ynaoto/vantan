//
//  ViewController.m
//  SampleApp
//
//  Created by Naoto Yoshioka on 2014/07/07.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"
#import "ExchangeInfo.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *currencyMarkLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UIPickerView *countryPicker;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

@implementation ViewController
{
    NSMutableArray *_exchageInfoArray;
}

- (void)updateOutputLabel
{
    float result;
    result = 123.4;
    self.outputLabel.text = [NSString stringWithFormat:@"%g", result];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _exchageInfoArray.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    ExchangeInfo *info = _exchageInfoArray[row];
    return info.countryName;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _exchageInfoArray = [NSMutableArray array];
    ExchangeInfo *info;
    
    info = [[ExchangeInfo alloc] init];
    info.countryName = @"日本";
    info.rateAgainstUSD = 102.1;
    info.currencyMark = @"¥";
    [_exchageInfoArray addObject:info];
    
    info = [[ExchangeInfo alloc] init];
    info.countryName = @"アメリカ";
    info.rateAgainstUSD = 1;
    info.currencyMark = @"$";
    [_exchageInfoArray addObject:info];
    
    info = [[ExchangeInfo alloc] init];
    info.countryName = @"EU";
    info.rateAgainstUSD = 0.74;
    info.currencyMark = @"€";
    [_exchageInfoArray addObject:info];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)go:(id)sender {
    [self.inputText resignFirstResponder];
    [self updateOutputLabel];
}

@end
