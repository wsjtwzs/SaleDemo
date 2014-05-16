//
//  AgencyMangerViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "AgencyMangerViewController.h"
#import "AddAgencyViewController.h"
#import "AgencyListViewController.h"
@interface AgencyMangerViewController ()

@end

@implementation AgencyMangerViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"经销商管理"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAgency:(id)sender {
    AddAgencyViewController *ctl = (AddAgencyViewController *)[AddAgencyViewController viewControllerWithNib];
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)agencyList:(id)sender {
    AgencyListViewController *ctl = (AgencyListViewController *)[AgencyListViewController viewController];
    [self.navigationController pushViewController:ctl animated:YES];
}
@end
