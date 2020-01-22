//
//  LSITasksTableViewController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITasksTableViewController.h"
#import "LSITaskController.h"
#import "LSITask.h"

@interface LSITasksTableViewController () { }

@property (nonatomic, readonly) NSDateFormatter *dateFormatter;

@end

@implementation LSITasksTableViewController

// TODO: Implement a initFromCoder method
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        // TODO: create taskController
        _taskController = [[LSITaskController alloc] init];
    }
    return self;
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    LSITask *task = self.taskController.tasks[indexPath.row];
    
    cell.textLabel.text = task.name;
    cell.detailTextLabel.text = [self.dateFormatter stringFromDate:task.date];

    return cell;
}

// MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	// TODO: Implement the prepareForSegue method for creating / editing a task
}

// MARK: - Properties

@synthesize dateFormatter = _dateFormatter;
- (NSDateFormatter *)dateFormatter {
    if (!_dateFormatter) {
        _dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter.dateStyle = NSDateFormatterShortStyle;
        _dateFormatter.timeStyle = NSDateFormatterNoStyle;
    }
    return _dateFormatter;
}

@end
