//
//  ClientMangerViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "ClientMangerViewController.h"
#import "NewClientViewController.h"
#import "ClientListViewController.h"


@interface ClientMangerViewController ()

@end

@implementation ClientMangerViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"客户管理"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)clientList:(id)sender {
    ClientListViewController *ctl = (ClientListViewController *)[ClientListViewController viewControllerWithNib];
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)newClient:(id)sender {
     NewClientViewController *ctl = (NewClientViewController *)[NewClientViewController viewControllerWithNib];
    ctl.state = ClientState_new;
    [self.navigationController pushViewController:ctl animated:YES];
}
@end
