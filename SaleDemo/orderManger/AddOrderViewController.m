//
//  AddOrderViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-29.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "AddOrderViewController.h"
#import "CacheHanding.h"
static CGFloat scrollViewHeight = 568.0;
@interface AddOrderViewController ()

@end

@implementation AddOrderViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"下订单"];
    self.baseScrollView.contentSize = CGSizeMake(SCREENWIDTH, scrollViewHeight);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addOrder:(id)sender {
    
    if([self.contact.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入联系人"];
    }else if([self.address.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入地址"];
    }else if([self.phone.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入电话"];
    }else if([self.product.text isEqualToString:@""]){
        [GlobalConfig alert:@"请选择产品"];
    }else if([self.num.text isEqualToString:@""]){
        [GlobalConfig alert:@"请选择产品数量"];
    }else {
        [self saveOrder];
        [GlobalConfig alert:@"创建成功"];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)selectProduct:(id)sender {
    ProductListViewController *ctl = (ProductListViewController *)[ProductListViewController viewControllerWithNib];
    ctl.delegate = self;
    [self.navigationController pushViewController:ctl animated:YES];
}

-(void) saveOrder {
    
    NSMutableArray *arr = [NSMutableArray arrayWithContentsOfFile:[CacheHanding filepath:@"order"]];
    if (arr == nil) {
        arr = [NSMutableArray array];
    }
    NSDictionary *saleDic = [NSDictionary  dictionaryWithObjectsAndKeys:self.contact.text,@"contact",self.address.text,@"address",self.phone.text,@"phone",self.num.text,@"num",self.product.text,@"product", nil];
    [arr addObject:saleDic];
    [CacheHanding writeCache:@"order" data:arr];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void) getProduct:(NSDictionary *)dic {
    self.product.text = dic[@"title"];
}
@end
