//
//  OrderListViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-29.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "OrderListViewController.h"
#import "OrderCell.h"
#import "CacheHanding.h"

@interface OrderListViewController ()

@end

@implementation OrderListViewController

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
    // Do any additional setup after loading the view.
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"订单列表"];
    
    CustomTabbar *tab = [[CustomTabbar alloc] initWithFrame:CGRectMake(0, 0,SCREENWIDTH , 30) cackGroundColor:TEXTGRAYCOLOR];
    [tab setButtons:@[@"待审核",@"已发货",@"成功订单"]];
    tab.customTabbarDelegate = self;
    [self.view addSubview:tab];
    self.baseTableView.frame = CGRectMake(0, tab.frame.size.height, SCREENWIDTH, SCREENHEIGHT - tab.frame.size.height);
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.cellHeight = 100;
    self.dataArray = (NSMutableArray *)[NSArray arrayWithObjects:@"订单货品1",@"订单货品2",@"订单货品3",@"订单货品4",nil];
//        self.dataArray = [NSMutableArray arrayWithContentsOfFile:[CacheHanding filepath:@"sale"]];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"taskCell";
    OrderCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([OrderCell class]) owner:self options:nil] objectAtIndex:0];
        cell.backgroundColor = CLEARCOLOR;
        cell.contentView.backgroundColor = CLEARCOLOR;
    }
//    NSDictionary *dic = [self.dataArray objectAtIndex:indexPath.row];
    cell.name.text = [self.dataArray objectAtIndex:indexPath.row];
//    cell.address.text = dic[@"address"];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
