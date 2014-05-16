//
//  SalemanMangerViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "SalemanMangerViewController.h"
#import "SalemanListViewController.h"
#import "AddSalemanViewController.h"

@interface SalemanMangerViewController ()

@end

@implementation SalemanMangerViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"销售员管理"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createSaleman:(id)sender {
    AddSalemanViewController *ctl = (AddSalemanViewController *)[AddSalemanViewController viewControllerWithNib];
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)salemanList:(id)sender {
    SalemanListViewController *ctl = (SalemanListViewController *)[SalemanListViewController viewController];
    [self.navigationController pushViewController:ctl animated:YES];
}
@end
