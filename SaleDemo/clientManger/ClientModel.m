//
//  ClientModel.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-28.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "ClientModel.h"

@implementation ClientModel


//@property (nonatomic , strong) NSString *name;//名称
//@property (nonatomic , strong) NSString *position;//职位
//@property (nonatomic , strong) NSString *phoneNumber;//手机
//@property (nonatomic , strong) NSString *number;//电话
//@property (nonatomic , strong) NSString *fax;//传真
//@property (nonatomic , strong) NSString *email;//邮箱
//@property (nonatomic , strong) NSString *company;//公司
//@property (nonatomic , strong) NSString *address;//地址
//@property (nonatomic , strong) NSString *postcode;//邮编


- (void) encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_position forKey:@"position"];
    [aCoder encodeObject:_phoneNumber forKey:@"phone"];
    [aCoder encodeObject:_number forKey:@"number"];
    [aCoder encodeObject:_fax forKey:@"fax"];
    [aCoder encodeObject:_email forKey:@"email"];
    [aCoder encodeObject:_company forKey:@"company"];
    [aCoder encodeObject:_address forKey:@"address"];
    [aCoder encodeObject:_postcode forKey:@"postcode"];
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.address = [aDecoder decodeObjectForKey:@"address"];
        self.position = [aDecoder decodeObjectForKey:@"position"];
        self.phoneNumber = [aDecoder decodeObjectForKey:@"phone"];
        self.number = [aDecoder decodeObjectForKey:@"number"];
        self.fax = [aDecoder decodeObjectForKey:@"fax"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.company = [aDecoder decodeObjectForKey:@"company"];
        self.postcode = [aDecoder decodeObjectForKey:@"postcode"];
    }
    return self;
}


@end
