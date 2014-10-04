//
//  CellFactory1.m
//  KHCleanTableViewController
//
//  Created by Triệu Khang on 3/10/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import "CellFactory1.h"
#import "CustomCellA.h"

@implementation CellFactory1

+ (CGFloat)heightForItemAtIndexpath:(NSIndexPath *)indexpaht model:(id <KHTableViewModel> )model {
	if (indexpaht.section == 0) return 40;
	return 120;
}

+ (UITableViewCell<KHCellProtocol> *)cellAtIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView model:(id <KHTableViewModel> )model {
	if (indexPath.section == 0) {
		UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
		if (!cell) {
			cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
		}

		NSString *info = [model itemAtIndexpath:indexPath];
		cell.textLabel.text = info;
		return cell;
	}

    UINib *cellNib = [UINib nibWithNibName:NSStringFromClass([CustomCellA class]) bundle:nil];

    [tableView registerNib:cellNib forCellReuseIdentifier:NSStringFromClass([CustomCellA class])];
    UITableViewCell<KHCellProtocol> *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([CustomCellA class])];

    id data = [model itemAtIndexpath:indexPath];
    [cell configWithData:data];

    return cell;
}

@end
