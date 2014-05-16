//
//  StaffCheckViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "StaffCheckViewController.h"

@interface StaffCheckViewController ()

@end

@implementation StaffCheckViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"考勤签到"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signin:(id)sender {
    [GlobalConfig alert:@"考勤已记录"];
}

- (IBAction)signout:(id)sender {
    [GlobalConfig alert:@"考勤已记录"];
}

- (IBAction)attendance:(id)sender {
    [GlobalConfig alert:@"签到成功"];
}

@end
