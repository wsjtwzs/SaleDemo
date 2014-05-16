//
//  SalemanListViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "SalemanListViewController.h"
#import "SaleCell.h"
#import "CacheHanding.h"

@interface SalemanListViewController ()

@end

@implementation SalemanListViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"销售列表"];
    self.dataArray = [NSMutableArray arrayWithContentsOfFile:[CacheHanding filepath:@"sale"]];
    self.cellHeight = 70;
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SaleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"saleCell"];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([SaleCell class]) owner:self options:nil] objectAtIndex:0];
    }

    if (self.dataArray.count>0) {
        NSDictionary *dic = [self.dataArray objectAtIndex:indexPath.row];
        cell.name.text = dic[@"username"];
        cell.phone.text = dic[@"phone"];
        cell.area.text = dic[@"area"];
    }
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
