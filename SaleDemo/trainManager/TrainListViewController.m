//
//  TrainListViewController.m
//  SaleDemo
//
//  Created by  evafan2003 on 14-4-30.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "TrainListViewController.h"
#import "WebViewController.h"

@interface TrainListViewController ()

@end

@implementation TrainListViewController

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
    // Do any additional setup after loading the view.
    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"最新动态"];
//    self.cellHeight = 100;
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.dataArray = [NSMutableArray arrayWithArray:@[@{@"title":@"董事长爱尔兰之行",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200201617&idx=4&sn=1fdd428d1e59ca4b54beeb9d0633baea#rd&ADUIN=281158993&ADSESSION=1398833984&ADTAG=CLIENT.QQ.5311_.0&ADPUBNO=26327"},
                                                      @{@"title":@"香港红酒品鉴会",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200191009&idx=1&sn=d0e8c303324ffbbbbccd42830f3168bf&ADUIN=281158993&ADSESSION=1398833984&ADTAG=CLIENT.QQ.5311_.0&ADPUBNO=26327"},
                                                      @{@"title":@"香港22日白酒文化活动",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200249321&idx=1&sn=bbde7177352a6c01cb0e7b836560350a"},
                                                      @{@"title":@"曼哈顿活动",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200270359&idx=1&sn=d08c3fb49c59c84b74816bbc1c752437#rd"}
                                                      ]];
}
                                                      
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"product";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId ];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.backgroundColor = CLEARCOLOR;
        cell.contentView.backgroundColor = CLEARCOLOR;
    }
    NSDictionary *dic = self.dataArray[indexPath.row];
    cell.textLabel.text = dic[@"title"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

        NSDictionary *dic = self.dataArray[indexPath.row];
        WebViewController *ctl = [[WebViewController alloc] initWithTitle:@"产品详情" URL:[NSURL URLWithString:dic[@"url"]]];
        [self.navigationController pushViewController:ctl animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
