//
//  PageViewController.h
//  twitter-snapchat
//
//  Created by Daníel Björn Sigurbjörnsson on 1/9/15.
//  Copyright (c) 2015 danni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface PageViewController : UIPageViewController

@property (strong, nonatomic) FirstViewController *FirstViewController;
@property (strong, nonatomic) SecondViewController *SecondViewController;

@end
