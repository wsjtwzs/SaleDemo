//
//  TaskModel.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "TaskModel.h"

@implementation TaskModel


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
    [aCoder encodeObject:[NSNumber numberWithInteger:_alertTime] forKey:@"alert"];
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
        self.alertTime = [[aDecoder decodeObjectForKey:@"alert"] integerValue];
        self.finish = [aDecoder decodeBoolForKey:@"finish"];
    }
    return self;
}

- (BOOL) isEqualToTask:(TaskModel *)model
{
    if ([self.client isEqualToString:model.client] && [self.address isEqualToString:model.address] && [self.date isEqualToString:model.date] && [self.time isEqualToString:model.time]) {
        return YES;
    }
    return NO;
}

@end
