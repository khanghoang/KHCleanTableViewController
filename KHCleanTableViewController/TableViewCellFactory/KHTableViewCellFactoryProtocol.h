//
//  KHTableViewCellFactory.h
//  KHCleanTableViewController
//
//  Created by Triệu Khang on 2/10/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KHTableViewModel.h"

@protocol KHTableViewCellFactoryProtocol <NSObject>

+ (CGFloat)heightForItemAtIndexpath:(NSIndexPath *)indexpaht model:(id<KHTableViewModel>)model;
- (UICollectionViewCell *)cellAtIndexPath:(NSIndexPath *)indexPath model:(id<KHTableViewModel>)model;

@end
