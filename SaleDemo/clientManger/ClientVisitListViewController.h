//
//  ClientVisitListViewController.h
//  SaleDemo
//
//  Created by 魔时网 on 14-4-29.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "ClientListViewController.h"
#import "ClientModel.h"

@protocol  ClientVisitListControllerDelegate;
@interface ClientVisitListViewController : ClientListViewController

@property (nonatomic, assign) id<ClientVisitListControllerDelegate> delegate;
@end


@protocol ClientVisitListControllerDelegate <NSObject>

- (void) selectClient:(ClientModel *)client;

@end
