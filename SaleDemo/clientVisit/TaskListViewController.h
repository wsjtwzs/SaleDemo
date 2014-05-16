//
//  TaskListViewController.h
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "BaseTableViewController.h"
#import "CustomTabbar.h"

typedef enum{
    TaskListState_all = 0,
    TaskListState_finish = 3,
    TaskListState_overDate = 2,
    TaskListState_doing = 1,
} TaskListState;

@interface TaskListViewController : BaseTableViewController<CustomTabbarDelegate>

@property (nonatomic, assign) TaskListState state;
@property (nonatomic, strong) NSMutableArray *listArray;

@end
