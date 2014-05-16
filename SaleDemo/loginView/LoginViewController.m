//
//  LoginViewController.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-26.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"

static NSString *username_saleman = @"1";
static NSString *password_saleman = @"123";

static NSString *username_agency = @"2";
static NSString *password_agency = @"123";

static NSString *username_manger = @"3";
static NSString *password_manger = @"123";


@interface LoginViewController ()

@end

@implementation LoginViewController

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
    self.title = @"登录";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    if (![GlobalConfig isKindOfNSStringClassAndLenthGreaterThanZero:self.username.text Alert:@"用户名不能为空"]) {
        return;
    }
    if (![GlobalConfig isKindOfNSStringClassAndLenthGreaterThanZero:self.password.text Alert:@"密码不能为空"]) {
        return;
    }
    
    MainViewController *main = (MainViewController *)[MainViewController viewControllerWithNib];
    
    if ([self.username.text isEqualToString:username_saleman] && [self.password.text isEqualToString:password_saleman]) {
        main.loginPerson = LoginPerson_saleman;
    }
    else if ([self.username.text isEqualToString:username_agency] && [self.password.text isEqualToString:password_agency]) {
        main.loginPerson = LoginPerson_agency;
    }
    else if ([self.username.text isEqualToString:username_manger] && [self.password.text isEqualToString:password_manger]) {
        main.loginPerson = LoginPerson_manger;
    }
    else {
        [GlobalConfig alert:@"用户名或密码不正确，请重新输入"];
        return;
    }
    
    [self.navigationController pushViewController:main animated:YES];
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.username resignFirstResponder];
    [self.password resignFirstResponder];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [GlobalConfig textFieldReturnKeyWithArray:@[self.username,self.password]];
    if (textField == self.password) {
        [self login:nil];
    }
    return YES;
}

@end
