//
//  ViewController.m
//  KHCleanTableViewController
//
//  Created by Triệu Khang on 2/10/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import "ViewController.h"
#import "TableController.h"
#import "BasicTableViewModel.h"
#import "KHBasicSectionModel.h"
#import "KHImageSectionModel.h"
#import "CellFactory1.h"
#import "KHLoadMoreSection.h"
#import <FLEX/FLEXManager.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) TableController *tableController;
@property (strong, nonatomic) BasicTableViewModel *basicModel;

@property (strong, nonatomic) CellFactory1 *cellFactory;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[FLEXManager sharedManager] showExplorer];
    // Do any additional setup after loading the view, typically from a nib.

    BasicTableViewModel *modelLoadMore = [[BasicTableViewModel alloc] init];
    modelLoadMore.sectionModel = [[KHLoadMoreSection alloc] init];

    BasicTableViewModel *model2 = [[BasicTableViewModel alloc] initWithModel:modelLoadMore];
    model2.sectionModel = [[KHImageSectionModel alloc] init];

    BasicTableViewModel *model1 = [[BasicTableViewModel alloc] initWithModel:model2];
    model1.sectionModel = [[KHBasicSectionModel alloc] init];

    self.basicModel = model1;

    self.tableController = [[TableController alloc] init];
    [self.tableController setModel:self.basicModel];

    self.tableView.dataSource = self.tableController;
    self.tableView.delegate = self.tableController;
}

@end
