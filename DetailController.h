//
//  DetailController.h
//  iOS-UITableView
//
//  Created by Docotel on 5/9/16.
//  Copyright © 2016 Wim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@interface DetailController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *txtItemId;
@property (weak, nonatomic) IBOutlet UILabel *txtItemName;

@property Item *item;

@end
