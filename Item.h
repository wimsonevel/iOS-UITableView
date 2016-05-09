//
//  Item.h
//  iOS-UITableView
//
//  Created by Docotel on 5/9/16.
//  Copyright © 2016 Wim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (nonatomic, copy) NSString* itemId;
@property (nonatomic, copy) NSString* itemName;

+ (void) setItemId: (NSString*) itemId;
+ (void) setItemName: (NSString*) itemName;

@end
