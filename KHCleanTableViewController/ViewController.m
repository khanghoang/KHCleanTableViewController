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

@interface ViewController ()
<
    UITableViewDelegate,
    UITableViewDataSource
>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) TableController *tableController;
@property (strong, nonatomic) BasicTableViewModel *basicModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BasicTableViewModel *model1 = [[BasicTableViewModel alloc] init];
    model1.sectionModel = [[KHBasicSectionModel alloc] init];

    self.basicModel = [[BasicTableViewModel alloc] initWithModel:model1];
    self.basicModel.sectionModel = [[KHBasicSectionModel alloc] init];
    self.tableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSUInteger sections = [self.basicModel numberOfSection];
    return sections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSUInteger numberCellInSection = [self.basicModel numberOfItemsInSection:section];
    return numberCellInSection;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    id<KHTableViewSectionModel> sectionModel = [self.basicModel sectionAtIndex:section];
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    title.text = [sectionModel title];
    return title;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }

    NSString *info = [self.basicModel itemAtIndexpath:indexPath];
    cell.textLabel.text = info;
    return cell;
}

@end
