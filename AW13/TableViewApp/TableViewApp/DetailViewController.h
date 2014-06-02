//
//  DetailViewController.h
//  TableViewApp
//
//  Created by Naoto Yoshioka on 2014/06/02.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface DetailViewController : UIViewController
@property NSString *itemName;
@property id <ViewControllerDelegate> delegate;

@end
