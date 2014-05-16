//
//  TaskListViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "TaskListViewController.h"
#import "CustomTabbar.h"
#import "DateManger.h"
#import "TaskCell.h"
#import "TaskModel.h"
#import "NewTaskViewController.h"

@interface TaskListViewController ()

@end

@implementation TaskListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.listArray   = [NSMutableArray array];
    }
    return self;
}

- (void) viewDidAppear:(BOOL)animated
{
    [self.baseTableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"任务列表"];
    
    CustomTabbar *tab = [[CustomTabbar alloc] initWithFrame:CGRectMake(0, 0,SCREENWIDTH , 30) cackGroundColor:TEXTGRAYCOLOR];
    [tab setButtons:@[@"全部",@"执行中",@"已过期",@"已完成"]];
    tab.customTabbarDelegate = self;
    [self.view addSubview:tab];
    self.baseTableView.frame = CGRectMake(0, tab.frame.size.height, SCREENWIDTH, SCREENHEIGHT - tab.frame.size.height);
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.cellHeight = 105.0f;
    self.dataArray = [DateManger shareDateManger].taskArray;
    [self.listArray addObjectsFromArray:self.dataArray];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"taskCell";
   TaskCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([TaskCell class]) owner:self options:nil] objectAtIndex:0];
        cell.backgroundColor = CLEARCOLOR;
        cell.contentView.backgroundColor = CLEARCOLOR;
    }
    
    TaskModel *model = self.dataArray[indexPath.row];
    cell.visitClient.text = [NSString stringWithFormat:@"拜访对象：%@",model.client];
    cell.visitAddress.text = [NSString stringWithFormat:@"位置：%@%@",model.city,model.address];
    cell.visitDate.text = [NSString stringWithFormat:@"%@",model.date];
    cell.visitRemark.text = [NSString stringWithFormat:@"备注：%@",model.remark];
    cell.visitFinish.hidden = !model.finish;
    
    return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  self.listArray.count;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewTaskViewController *ctl = (NewTaskViewController *)[NewTaskViewController viewControllerWithNib];
    ctl.task = self.dataArray[indexPath.row];
    ctl.taskState = TaskState_finish;
    [self.navigationController pushViewController:ctl animated:YES];

}

- (void) switchTabBarWithButton:(UIButton *)sender index:(NSInteger)index
{
    self.state = index;
    [self refreshListArray];
    [self.baseTableView  reloadData];
}

- (NSComparisonResult)taskDateCompareWithCurentDate:(TaskModel *)model
{
    NSString *time = [NSString stringWithFormat:@"%@  %@",model.date,model.time];
    NSTimeInterval timestamp = [GlobalConfig datetoTimeStamp:time format:DATEFORMAT_06];
     return  [GlobalConfig dateCompareWithCurrentDate:[NSString stringWithFormat:@"%lf",timestamp]];
}


- (void )refreshListArray
{
    [self.listArray removeAllObjects];

    switch (self.state) {
        case TaskListState_all:
            [self.listArray addObjectsFromArray:self.dataArray];
            break;
       case TaskListState_doing:
            for (TaskModel *model in self.dataArray) {
                if ([self taskDateCompareWithCurentDate:model] == NSOrderedDescending && model.finish == NO) {
                    [self.listArray addObject:model];
                }
            }
            break;
        case TaskListState_finish:
            for (TaskModel *model in self.dataArray) {
                if ( model.finish == YES) {
                    [self.listArray addObject:model];
                }
            }
            break;
        case TaskListState_overDate:
            for (TaskModel *model in self.dataArray) {
                if ([self taskDateCompareWithCurentDate:model] != NSOrderedDescending) {
                    [self.listArray addObject:model];
                }
            }
            break;
            
        default:
            
            [self.listArray addObjectsFromArray:self.dataArray];
            break;
    }
    [self.baseTableView reloadData];
}


@end
