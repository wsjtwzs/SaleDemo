//
//  AddAgencyViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "AddAgencyViewController.h"
#import "CacheHanding.h"

@interface AddAgencyViewController ()

@end

@implementation AddAgencyViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"添加经销商"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (IBAction)selectArea:(id)sender {
}

- (IBAction)addAgency:(id)sender {
    if([self.company.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入用户名"];
    }else if([self.contact.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入姓名"];
    }else if([self.phone.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入电话"];
    }else if([self.area isEqualToString:@""]){
        [GlobalConfig alert:@"请选择区域"];
    }else {
        [GlobalConfig alert:@"创建成功"];
        [self saveSale];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

-(void) saveSale {
    
    NSMutableArray *arr = [NSMutableArray arrayWithContentsOfFile:[CacheHanding filepath:@"agency"]];
    if (arr == nil) {
        arr = [NSMutableArray array];
    }
    NSDictionary *saleDic = [NSDictionary  dictionaryWithObjectsAndKeys:self.contact.text,@"contact",self.company.text,@"company",self.phone.text,@"phone",@"默认区域",@"area", nil];
    [arr addObject:saleDic];
    [CacheHanding writeCache:@"agency" data:arr];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.company resignFirstResponder];
    [self.contact resignFirstResponder];
    [self.phone resignFirstResponder];
}
@end
