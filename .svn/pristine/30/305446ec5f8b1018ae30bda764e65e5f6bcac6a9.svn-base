//
//  ClientListViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-28.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "ClientListViewController.h"
#import "DateManger.h"
#import "ClientModel.h"
#import "ClientCell.h"
#import "NewClientViewController.h"


@interface ClientListViewController ()

@end

@implementation ClientListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated
{
    [self.baseTableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"客户列表"];
    self.cellHeight = 80;
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.dataArray = [DateManger shareDateManger].clientArray;
    
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"clientCell";
    ClientCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ClientCell class]) owner:self options:nil] objectAtIndex:0];
        cell.backgroundColor = CLEARCOLOR;
        cell.contentView.backgroundColor = CLEARCOLOR;
    }
    
    ClientModel *model = self.dataArray[indexPath.row];
    cell.name.text = model.name;
    cell.address.text = [NSString stringWithFormat:@"住址：%@",model.address];
    cell.position.text = model.position;

    return cell;
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewClientViewController *ctl = (NewClientViewController *)[NewClientViewController viewControllerWithNib];
    ctl.client = self.dataArray[indexPath.row];
    ctl.state = ClientState_finish;
    [self.navigationController pushViewController:ctl animated:YES];
    
}




@end
