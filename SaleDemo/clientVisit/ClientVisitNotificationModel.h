//
//  ClientVisitNotificationModel.h
//  SaleDemo
//
//  Created by 魔时网 on 14-5-15.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "MOSHNotificationModel.h"
#import "TaskModel.h"

typedef enum{
    TimeInterval_fiveMin = 5*60,
    TimeInterval_tenMin = 10*60,
    TimeInterval_thirtyMin = 30*60,
    TimeInterval_oneHour = 60*60,
    TimeInterval_twoHour = 2*60*60,
    TimeInterval_fiveHour = 5*60*60,
    TimeInterval_tenHour = 10*60*60,
    TimeInterval_twentyfourHour = 24*60*60,
} TimeInterval;

@interface ClientVisitNotificationModel : MOSHNotificationModel
{
    TaskModel *_model;
}

@end
