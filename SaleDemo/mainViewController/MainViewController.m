//
//  MainViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "MainViewController.h"
#import "AgencyMangerViewController.h"
#import "ClientMangerViewController.h"
#import "SalemanMangerViewController.h"
#import "StaffCheckViewController.h"
#import "StaffRecordViewController.h"
#import "VisitRecordViewController.h"
#import "ClientVisitViewController.h"
#import "OrderMangerViewController.h"
#import "ProductListViewController.h"
#import "TrainManageViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.loginPerson = LoginPerson_saleman;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    
    
    
    switch (self.loginPerson) {
        case LoginPerson_saleman:
            [self.view addSubview:self.salemanView];
            break;
            
        case LoginPerson_agency:
            [self.view  addSubview:self.agenyView];
            break;
            
        case LoginPerson_manger:
            [self.view addSubview:self.mangerView];
            break;
        default:
            [self.view addSubview:self.salemanView];
            break;
    }
    
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"主页"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clientVisit:(id)sender {
    ClientVisitViewController *ctl = (ClientVisitViewController *)[ClientVisitViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
    
}

- (IBAction)clientManger:(id)sender {
    ClientMangerViewController *ctl = (ClientMangerViewController *)[ClientMangerViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)upgrateData:(id)sender {
    [GlobalConfig alert:@"数据同步成功"];
}

- (IBAction)staffCheck:(id)sender {
    StaffCheckViewController *ctl = (StaffCheckViewController *)[StaffCheckViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)orderManger:(id)sender {
    OrderMangerViewController *ctl = (OrderMangerViewController *)[OrderMangerViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)salemanManger:(id)sender {
    SalemanMangerViewController *ctl = (SalemanMangerViewController *)[SalemanMangerViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}
- (IBAction)agencyManger:(id)sender {
    AgencyMangerViewController *ctl = (AgencyMangerViewController *)[AgencyMangerViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)staffRecord:(id)sender {
    StaffRecordViewController *ctl = (StaffRecordViewController *)[StaffRecordViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}

- (IBAction)visitRecord:(id)sender {
    VisitRecordViewController *ctl = (VisitRecordViewController *)[VisitRecordViewController viewControllerWithNib];
    ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}


- (IBAction)productList:(id)sender {
//    ProductListViewController *ctl = (ProductListViewController *)[ProductListViewController viewControllerWithNib];
//    [self.navigationController pushViewController:ctl animated:YES];

    TrainManageViewController *ctl = (TrainManageViewController *)[TrainManageViewController viewControllerWithNib];
    [self.navigationController pushViewController:ctl animated:YES];
    
}

- (IBAction)newOrder:(id)sender {
    OrderMangerViewController *ctl = (OrderMangerViewController *)[ProductListViewController viewControllerWithNib];
        ctl.loginPerson  = self.loginPerson;
    [self.navigationController pushViewController:ctl animated:YES];
}

@end
