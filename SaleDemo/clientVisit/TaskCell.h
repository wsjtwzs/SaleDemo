//
//  TaskCell.h
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaskModel.h"

@protocol TaskCellDelegate;

@interface TaskCell : UITableViewCell<UIAlertViewDelegate>

@property (assign,nonatomic) id<TaskCellDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *visitAddress;
@property (weak, nonatomic) IBOutlet UILabel *visitRemark;
@property (weak, nonatomic) IBOutlet UILabel *visitFinish;

@property (weak, nonatomic) IBOutlet UILabel *visitDate;
@property (weak, nonatomic) IBOutlet UILabel *visitClient;
@property (weak, nonatomic) IBOutlet UIButton *finishButton;

- (IBAction)finishVisit:(id)sender;
- (void) setValueWithTaskModel:(TaskModel *)model;
@end


@protocol TaskCellDelegate <NSObject>

- (void) finishButtonClick:(TaskCell *)cell;

@end