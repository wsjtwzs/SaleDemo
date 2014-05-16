//
//  StaffRecordViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "StaffRecordViewController.h"
#import "StallCell.h"

@interface StaffRecordViewController ()

@end

@implementation StaffRecordViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"考勤记录"];
    
    CustomTabbar *tab = [[CustomTabbar alloc] initWithFrame:CGRectMake(0, 0,SCREENWIDTH , 30) cackGroundColor:TEXTGRAYCOLOR];
    [tab setButtons:@[@"上班考勤",@"下班考勤",@"签到"]];
    tab.customTabbarDelegate = self;
    [self.view addSubview:tab];
    self.baseTableView.frame = CGRectMake(0, tab.frame.size.height, SCREENWIDTH, SCREENHEIGHT - tab.frame.size.height);
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.cellHeight = 80;
    self.dataArray = (NSMutableArray *)[NSArray arrayWithObjects:@"销售员1",@"销售员2",@"销售员3",@"销售员4",nil];
//    [self.listArray addObjectsFromArray:self.dataArray];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"taskCell";
    StallCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([StallCell class]) owner:self options:nil] objectAtIndex:0];
        cell.backgroundColor = CLEARCOLOR;
        cell.contentView.backgroundColor = CLEARCOLOR;
    }
    
    cell.name.text = [self.dataArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void) switchTabBarWithButton:(UIButton *)sender index:(NSInteger)index
{
 //   self.state = index;
   // [self refreshListArray];
    [self.baseTableView  reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
