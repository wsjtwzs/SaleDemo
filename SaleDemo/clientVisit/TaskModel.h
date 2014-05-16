//
//  TaskModel.h
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaskModel : NSObject<NSCoding>

@property (nonatomic , strong) NSString *client;//客户
@property (nonatomic , strong) NSString *date;//日期
@property (nonatomic , strong) NSString *time;//时间
@property (nonatomic , strong) NSString *city;//城市
@property (nonatomic , strong) NSString *address;//地址
@property (nonatomic , strong) NSString *remark;//备注
@property (nonatomic , strong) NSString *state;//重要
@property (nonatomic , strong) NSString *other;//说明
@property (nonatomic, strong) NSString *alert;//提醒
@property (nonatomic , assign) BOOL finish;//是否完成
//@property (nonatomic , strong) UIImage *image;//图片


@end
