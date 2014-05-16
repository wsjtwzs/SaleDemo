//
//  AddSalemanViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "AddSalemanViewController.h"
#import "CacheHanding.h"

@interface AddSalemanViewController ()

@end

@implementation AddSalemanViewController

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
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"添加销售员"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addSaleman:(id)sender {
    if([self.username.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入用户名"];
    }else if([self.name.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入姓名"];
    }else if([self.phone.text isEqualToString:@""]){
        [GlobalConfig alert:@"请输入电话"];
    }else if([self.area isEqualToString:@""]){
        [GlobalConfig alert:@"请选择区域"];
    }else {
        [self saveSale];
        [GlobalConfig alert:@"创建成功"];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

-(void) saveSale {

    NSMutableArray *arr = [NSMutableArray arrayWithContentsOfFile:[CacheHanding filepath:@"sale"]];
    if (arr == nil) {
        arr = [NSMutableArray array];
    }
    NSDictionary *saleDic = [NSDictionary  dictionaryWithObjectsAndKeys:self.username.text,@"username",self.name.text,@"name",self.phone.text,@"phone",@"默认区域",@"area", nil];
    [arr addObject:saleDic];
    [CacheHanding writeCache:@"sale" data:arr];
}

- (IBAction)selectArea:(id)sender {
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.username resignFirstResponder];
    [self.name resignFirstResponder];
    [self.phone resignFirstResponder];
}
@end
