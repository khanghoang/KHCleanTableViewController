//
//  CustomCellA.m
//  KHCleanTableViewController
//
//  Created by Triệu Khang on 3/10/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import "CustomCellA.h"
#import "UIImageView+AFNetworking.h"

@interface CustomCellA()

@property (weak, nonatomic) IBOutlet UIImageView *imgCellAvatar;

@end

@implementation CustomCellA

- (void)configWithData:(id)data {
    [self.imgCellAvatar setImageWithURL:[NSURL URLWithString:data]];
}

- (void)prepareForReuse {
    [self.imgCellAvatar setImage:nil];
}

@end
