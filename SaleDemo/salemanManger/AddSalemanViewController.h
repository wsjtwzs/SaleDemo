//
//  AddSalemanViewController.h
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "BaseTableViewController.h"

@interface AddSalemanViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) NSString *area;
- (IBAction)addSaleman:(id)sender;
- (IBAction)selectArea:(id)sender;

@end
