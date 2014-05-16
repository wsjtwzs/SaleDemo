//
//  TrainManageViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-30.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "TrainManageViewController.h"
#import "ProductListViewController.h"
#import "TrainListViewController.h"

@interface TrainManageViewController ()

@end

@implementation TrainManageViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"培训管理"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)productList:(id)sender {
    ProductListViewController *ctl = (ProductListViewController *)[ProductListViewController viewControllerWithNib];
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)news:(id)sender {
    TrainListViewController *ctl = (TrainListViewController *)[TrainListViewController viewController];
    [self.navigationController pushViewController:ctl animated:YES];
    
}
@end
