//
//  NewClientViewController.h
//  SaleDemo
//
//  Created by wuzhensong on 14-4-28.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "BaseViewController.h"
#import "ClientModel.h"

typedef  enum{
    ClientState_new,
    ClientState_finish,
}ClientState;

@interface NewClientViewController : BaseViewController

@property (nonatomic, assign) ClientState state;
@property (nonatomic, strong) ClientModel *client;
@property (weak, nonatomic) IBOutlet UIScrollView *baseScrollView;

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *position;
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UITextField *number;
@property (weak, nonatomic) IBOutlet UITextField *fox;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *company;
@property (weak, nonatomic) IBOutlet UITextField *address;
@property (weak, nonatomic) IBOutlet UITextField *postcode;

@property (weak, nonatomic) IBOutlet UIButton *uploadButton;
- (IBAction)upload:(id)sender;
@end
