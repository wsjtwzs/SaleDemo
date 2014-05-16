//
//  ProductListViewController.h
//  SaleDemo
//
//  Created by 魔时网 on 14-4-29.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "BaseTableViewController.h"

@protocol ProductListViewControllerDelegate <NSObject>

-(void) getProduct:(NSDictionary *) dic;

@end

@interface ProductListViewController : BaseTableViewController
@property (nonatomic, assign) id<ProductListViewControllerDelegate> delegate;
@end
