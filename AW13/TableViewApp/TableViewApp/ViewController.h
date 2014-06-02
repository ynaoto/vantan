//
//  ViewController.h
//  TableViewApp
//
//  Created by Naoto Yoshioka on 2014/06/02.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewControllerDelegate <NSObject>
- (void)ping:(int)n;

@end

@interface ViewController : UIViewController <ViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end
