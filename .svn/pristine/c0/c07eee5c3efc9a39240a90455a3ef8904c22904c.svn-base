//
//  AgencyListViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "AgencyListViewController.h"
#import "AgencyCell.h"
#import "CacheHanding.h"

@interface AgencyListViewController ()

@end

@implementation AgencyListViewController

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
    self.dataArray = [NSMutableArray arrayWithContentsOfFile:[CacheHanding filepath:@"agency"]];
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemDelete title:@"经销商列表"];
    self.cellHeight = 70;
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AgencyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"agencyCell"];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([AgencyCell class]) owner:self options:nil] objectAtIndex:0];
    }
    if (self.dataArray.count>0) {

        NSDictionary *dic = [self.dataArray objectAtIndex:indexPath.row];
        cell.company.text = dic[@"company"];
        cell.contact.text = dic[@"contact"];
        cell.phone.text = dic[@"phone"];
        cell.area.text = dic[@"area"];
    }

    return cell;
}

@end
