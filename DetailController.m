//
//  DetailController.m
//  iOS-UITableView
//
//  Created by Docotel on 5/9/16.
//  Copyright © 2016 Wim. All rights reserved.
//

#import "DetailController.h"

@interface DetailController ()

@end

@implementation DetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if(self.item != nil){
        [self.txtItemId setText:[NSString stringWithFormat:@"%@%@", @"ID : ", self.item.itemId]];
        [self.txtItemName setText:[NSString stringWithFormat:@"%@%@", @"NAME : ", self.item.itemName]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
