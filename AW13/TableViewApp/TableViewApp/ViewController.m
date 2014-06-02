//
//  ViewController.m
//  TableViewApp
//
//  Created by Naoto Yoshioka on 2014/06/02.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
{
    NSArray *_tableData;
}

- (void)ping:(int)n
{
    NSLog(@"%s: %d", __FUNCTION__, n);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _tableData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = _tableData[indexPath.row];
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self;
    _tableData = @[
                   @"あいうえお", @"かきくけこ", @"さしすせそ",
                   ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)iroha:(id)sender {
    _tableData = @[
                   @"いろはにほへと",
                   @"ちりぬるを",
                   @"あさきゆめみし",
                   @"えひもせず",
                   ];
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", segue);
    NSLog(@"%@", sender);
    DetailViewController *dst = segue.destinationViewController;
    UITableViewCell *cell = sender;
    dst.itemName = cell.textLabel.text;
    dst.delegate = self;
}

@end
