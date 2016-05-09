//
//  ViewController.m
//  iOS-UITableView
//
//  Created by Docotel on 5/3/16.
//  Copyright © 2016 Wim. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

NSString* const ITEM_CELL_ID = @"ITEM_CELL";
NSString* const ITEM_DETAIL_ID = @"ITEM_DETAIL";

NSMutableArray* itemList;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self initMenu];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView reloadData];
}


- (void) initMenu {
    itemList = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 5; i++) {
        Item* item = [[Item alloc] init];
        [item setItemId:[NSString stringWithFormat:@"%i", i]];
        [item setItemName:[NSString stringWithFormat:@"%@%i", @"Item ", i]];
        
        [itemList addObject:item];
    }

}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [itemList count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:ITEM_CELL_ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ITEM_CELL_ID];
    }
    
    Item *item = [itemList objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [item itemName];
    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:ITEM_DETAIL_ID]) {
        NSIndexPath* index = [self.tableView indexPathForSelectedRow];
        Item *item = [itemList objectAtIndex:index.row];
        
        DetailController* destView = segue.destinationViewController;
        destView.item = item;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
