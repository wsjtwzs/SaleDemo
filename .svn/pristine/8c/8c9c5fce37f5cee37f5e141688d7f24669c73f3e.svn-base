//
//  ClientVisitListViewController.m
//  SaleDemo
//
//  Created by 魔时网 on 14-4-29.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "ClientVisitListViewController.h"

@interface ClientVisitListViewController ()

@end

@implementation ClientVisitListViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ClientModel *model = self.dataArray[indexPath.row];
    [self.delegate selectClient:model];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
