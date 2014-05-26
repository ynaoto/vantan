//
//  ViewController.m
//  ArraySample
//
//  Created by Naoto Yoshioka on 2014/05/26.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;

@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *labels;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
    NSArray *array = [NSArray arrayWithObjects:self.label1, self.label2, self.label3, nil];
    int n = [array count];
    for (int i = 0; i < n; i++) {
        UILabel *label = [array objectAtIndex:i];
        [label setBackgroundColor:[UIColor redColor]];
    }
     */

    /*
    NSArray *array = @[self.label1, self.label2, self.label3]; ///////
    int n = [array count];
    for (int i = 0; i < n; i++) {
        UILabel *label = [array objectAtIndex:i];
        [label setBackgroundColor:[UIColor redColor]];
    }
     */

    /*
    NSArray *array = @[self.label1, self.label2, self.label3];
    int n = array.count; /////
    for (int i = 0; i < n; i++) {
        UILabel *label = [array objectAtIndex:i];
        [label setBackgroundColor:[UIColor redColor]];
    }
     */

    /*
    NSArray *array = @[self.label1, self.label2, self.label3];
    int n = array.count;
    for (int i = 0; i < n; i++) {
        UILabel *label = [array objectAtIndex:i];
        [label setBackgroundColor:UIColor.redColor]; /////
    }
     */

    /*
    NSArray *array = @[self.label1, self.label2, self.label3];
    int n = array.count;
    for (int i = 0; i < n; i++) {
        UILabel *label = [array objectAtIndex:i];
        label.backgroundColor = UIColor.redColor; /////
    }
     */

    /*
    NSArray *array = @[self.label1, self.label2, self.label3];
    int n = array.count;
    for (int i = 0; i < n; i++) {
        UILabel *label = array[i]; /////
        label.backgroundColor = UIColor.redColor;
    }
     */

    /*
    NSArray *array = @[self.label1, self.label2, self.label3];
    for (UILabel *label in array) { ////
        label.backgroundColor = UIColor.redColor;
    }
     */

    for (UILabel *label in self.labels) { ////
        label.backgroundColor = UIColor.redColor;
        //label.backgroundColor = [UIColor redColor];
    }

    /*
    [self.labels enumerateObjectsUsingBlock:^(UILabel *label, NSUInteger idx, BOOL *stop) {
        label.backgroundColor = UIColor.redColor;
    }];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
