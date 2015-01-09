//
//  ViewController.h
//  twitter-snapchat
//
//  Created by Daníel Björn Sigurbjörnsson on 1/9/15.
//  Copyright (c) 2015 danni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *tableData;

@property (assign, nonatomic) IBOutlet TableViewCell *TableViewCell;

@end

