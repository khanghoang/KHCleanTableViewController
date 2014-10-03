//
//  CellFactory1.m
//  KHCleanTableViewController
//
//  Created by Triệu Khang on 3/10/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import "CellFactory1.h"

@implementation CellFactory1

+ (CGFloat)heightForItemAtIndexpath:(NSIndexPath *)indexpaht model:(id<KHTableViewModel>)model {
    if(indexpaht.section == 0) return 40;
    return 80;
}

+ (UITableViewCell *)cellAtIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView model:(id<KHTableViewModel>)model {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }

    NSString *info = [model itemAtIndexpath:indexPath];
    cell.textLabel.text = info;
    return cell;
}

@end
