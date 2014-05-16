//
//  TaskModel.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "TaskModel.h"

@implementation TaskModel


//@property (nonatomic , strong) NSString *client;//客户
//@property (nonatomic , strong) NSString *date;//日期
//@property (nonatomic , strong) NSString *time;//时间
//@property (nonatomic , strong) NSString *city;//城市
//@property (nonatomic , strong) NSString *address;//地址
//@property (nonatomic , strong) NSString *remark;//备注
//@property (nonatomic , strong) NSString *state;//重要
//@property (nonatomic , strong) NSString *other;//说明
//@property (nonatomic, strong) NSString *alert;//提醒
//@property (nonatomic , assign) BOOL finish;//是否完成

- (void) encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_client forKey:@"client"];
    [aCoder encodeObject:_address forKey:@"address"];
    [aCoder encodeObject:_date forKey:@"date"];
    [aCoder encodeObject:_time forKey:@"time"];
    [aCoder encodeObject:_city forKey:@"city"];
    [aCoder encodeObject:_remark forKey:@"remark"];
    [aCoder encodeObject:_state forKey:@"state"];
    [aCoder encodeObject:_other forKey:@"other"];
    [aCoder encodeObject:_alert forKey:@"alert"];
    [aCoder encodeBool:_finish forKey:@"finish"];
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        self.client = [aDecoder decodeObjectForKey:@"client"];
        self.address = [aDecoder decodeObjectForKey:@"address"];
        self.date = [aDecoder decodeObjectForKey:@"date"];
        self.time = [aDecoder decodeObjectForKey:@"time"];
        self.city = [aDecoder decodeObjectForKey:@"city"];
        self.remark = [aDecoder decodeObjectForKey:@"remark"];
        self.state = [aDecoder decodeObjectForKey:@"state"];
        self.other = [aDecoder decodeObjectForKey:@"other"];
        self.alert = [aDecoder decodeObjectForKey:@"alert"];
        self.finish = [aDecoder decodeBoolForKey:@"finish"];
    }
    return self;
}


@end
