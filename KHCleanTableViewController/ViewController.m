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
#import "CellFactory1.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) TableController *tableController;
@property (strong, nonatomic) BasicTableViewModel *basicModel;

@property (strong, nonatomic) CellFactory1 *cellFactory;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BasicTableViewModel *model1 = [[BasicTableViewModel alloc] init];
    model1.sectionModel = [[KHBasicSectionModel alloc] init];

    self.basicModel = [[BasicTableViewModel alloc] initWithModel:model1];
    self.basicModel.sectionModel = [[KHBasicSectionModel alloc] init];

    self.tableController = [[TableController alloc] init];
    [self.tableController setModel:self.basicModel];

    self.tableView.dataSource = self.tableController;
    self.tableView.delegate = self.tableController;
}

@end
