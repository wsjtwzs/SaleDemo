//
//  ProductListViewController.m
//  SaleDemo
//
//  Created by 魔时网 on 14-4-29.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "ProductListViewController.h"
#import "ProductCell.h"
#import "WebViewController.h"

@interface ProductListViewController ()

@end

@implementation ProductListViewController

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

    [self createBarWithLeftBarItem:MoshNavigationBarItemBack rightBarItem:MoshNavigationBarItemNone title:@"产品列表"];
    self.cellHeight = 100;
    self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.dataArray = [NSMutableArray arrayWithArray:@[@{@"title":@"Blanc de Blanc NV希拉谷白中白起泡葡萄酒",@"price":@"12%",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200174967&idx=2&sn=96f2c4704f11cbe8b89b611b10baa9f3"},
                                                      @{@"title":@"Eliza Shiraz 2010希拉谷伊丽莎收藏级西拉干红葡萄酒",@"price":@"14.5%",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200174967&idx=4&sn=14fb1a0157484603cdb2fb6fd2dfdf41"},
                                                      @{@"title":@"Muscat1987希拉谷麝香葡萄酒 1987",@"price":@"20%",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200174967&idx=3&sn=aab1357aeb78e6d43bef5cf521720f29"},
                                                      @{@"title":@"Punch Cabernet Sauvignon 2010希拉谷PUNCH收藏级赤霞珠干红葡萄酒",@"price":@"14.45%",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200174967&idx=5&sn=829b603e92c5915c8e027965eac74bf8"},
                                                      @{@"title":@"产品线—国窖1573系列",@"price":@"60%",@"url":@"http://mp.weixin.qq.com/s?__biz=MzA5MzQzODExMw==&mid=200175097&idx=4&sn=4080e8782b8ec8cb66a9cee7b9a8d3cd"},
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
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId ];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ProductCell class]) owner:self options:nil] objectAtIndex:0];
        cell.backgroundColor = CLEARCOLOR;
        cell.contentView.backgroundColor = CLEARCOLOR;
    }
    NSDictionary *dic = self.dataArray[indexPath.row];
    cell.title.text = dic[@"title"];
    cell.price.text = dic[@"price"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.delegate) {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        [self.delegate getProduct:[self.dataArray objectAtIndex:indexPath.row]];
        [self.navigationController popViewControllerAnimated:YES];
    }
    else {
        NSDictionary *dic = self.dataArray[indexPath.row];
        WebViewController *ctl = [[WebViewController alloc] initWithTitle:@"产品详情" URL:[NSURL URLWithString:dic[@"url"]]];
        [self.navigationController pushViewController:ctl animated:YES];
    }
}

@end
