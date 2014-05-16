//
//  TaskCell.h
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaskCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *visitAddress;
@property (weak, nonatomic) IBOutlet UILabel *visitRemark;
@property (weak, nonatomic) IBOutlet UILabel *visitFinish;

@property (weak, nonatomic) IBOutlet UILabel *visitDate;
@property (weak, nonatomic) IBOutlet UILabel *visitClient;
@end
