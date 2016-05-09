//
//  ViewController.h
//  iOS-UITableView
//
//  Created by Docotel on 5/3/16.
//  Copyright © 2016 Wim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
#import "DetailController.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

