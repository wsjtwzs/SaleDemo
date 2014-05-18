//
//  MOSHLocalNotification.h
//  fenice
//
//  Created by 魔时网 on 13-12-3.
//  Copyright (c) 2013年 mosh. All rights reserved.
//

/*
 *注册消息提醒
 */
#import <Foundation/Foundation.h>
#import "MOSHNotificationModel.h"

@interface MOSHLocalNotification : NSObject

/**
 *   注册消息，如果有相同提醒则不添加，判断依据noti.userInfo是否相同
 *
 *  @param noti
 */
+ (void)addNotification:(MOSHNotificationModel *)noti;

/**
 *   删除提醒 判断依据noti.userInfo是否相同
 *
 *  @param noti
 */
+ (void) deleteNotification:(MOSHNotificationModel *)noti;

/**
 *  更新本地消息
 *
 *  @param noti     新消息
 *  @param old_noti 需要更改的消息（userinfo必须与注册时一致）
 */
+ (void) updateNotification:(MOSHNotificationModel *)noti oldNotification:(MOSHNotificationModel *)old_noti;

/**
 *    判断某个通知提醒是否存在
 *
 *  @param noti
 *
 *  @return UILocalNotification实例或nil
 */
+ (UILocalNotification*)notificationIsExited:(MOSHNotificationModel *)noti;

/**
 *   删除全部提醒
 */
+ (void) deletteAllNotification;



@end
