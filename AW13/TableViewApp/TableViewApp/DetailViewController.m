//
//  DetailViewController.m
//  TableViewApp
//
//  Created by Naoto Yoshioka on 2014/06/02.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *itemLabel;

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"itemName = %@", self.itemName);
    self.itemLabel.text = self.itemName;
    [self.delegate ping:123];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**/
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"%s", __FUNCTION__);
}
/**/

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", self.navigationController);
    NSLog(@"%@", self.navigationController.viewControllers);
    ViewController *vc = self.navigationController.viewControllers[0];
    vc.numberLabel.text = [NSString stringWithFormat:@"%d", arc4random()];
}

- (IBAction)sliderChanged:(UISlider*)sender {
    NSLog(@"%s: value = %g", __FUNCTION__, sender.value);
    [self.delegate ping:(int)sender.value];
}

@end
