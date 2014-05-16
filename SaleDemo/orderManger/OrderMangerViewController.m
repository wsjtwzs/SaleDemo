//
//  OrderMangerViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "OrderMangerViewController.h"
#import "OrderListViewController.h"
#import "AddOrderViewController.h"

@interface OrderMangerViewController ()

@end

@implementation OrderMangerViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"订单管理"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newOrder:(id)sender {
    AddOrderViewController *ctl = (AddOrderViewController *)[AddOrderViewController viewControllerWithNib];
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)orderList:(id)sender {
    OrderListViewController *ctl = (OrderListViewController *)[OrderListViewController viewController];
    [self.navigationController pushViewController:ctl animated:YES];
}
@end
