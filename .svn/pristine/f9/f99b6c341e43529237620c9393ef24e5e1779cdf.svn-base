//
//  ClientVisitViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "ClientVisitViewController.h"
#import "NewTaskViewController.h"
#import "TaskListViewController.h"

@interface ClientVisitViewController ()

@end

@implementation ClientVisitViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"客户拜访"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newTask:(id)sender {
    NewTaskViewController *ctl = (NewTaskViewController *)[NewTaskViewController viewControllerWithNib];
    ctl.taskState = TaskState_new;
    [self.navigationController pushViewController:ctl animated:YES];
    
}

- (IBAction)taskList:(id)sender {
    TaskListViewController *ctl = (TaskListViewController *)[TaskListViewController viewControllerWithNib];
    [self.navigationController pushViewController:ctl animated:YES];
}

@end
