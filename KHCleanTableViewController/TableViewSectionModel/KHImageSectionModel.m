//
//  KHImageSectionModel.m
//  KHCleanTableViewController
//
//  Created by Triệu Khang on 3/10/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import "KHImageSectionModel.h"

@implementation KHImageSectionModel

- (NSString *)title {
    return @"Images";
}

- (NSArray *)items {
    return @[
             @"https://gp1.wac.edgecastcdn.net/806614/photos/photos.500px.net/85147911/20c04aff123b7ee5ea4f1e8033e516c161d7ad91/3.jpg?v=9",
             @"https://gp1.wac.edgecastcdn.net/806614/photos/photos.500px.net/85152405/ee4f9aebd31d174d273f53e497423fc89cb1ee41/3.jpg?v=10",
             @"https://gp1.wac.edgecastcdn.net/806614/photos/photos.500px.net/85147057/de07f99c770d041158200b5ce93c6dd0158f19e8/3.jpg?v=6"
             ];
}

@end
