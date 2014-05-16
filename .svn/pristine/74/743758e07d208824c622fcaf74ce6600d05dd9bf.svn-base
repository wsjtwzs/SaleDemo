//
//  CustomTabbar.h
//  MoshActivity
//
//  Created by  evafan2003 on 12-12-29.
//  Copyright (c) 2012年 cn.mosh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol CustomTabbarDelegate;

@interface CustomTabbar : UIView

@property (nonatomic, assign) NSInteger oldTag;
@property (nonatomic , strong) NSMutableArray *buttonArray;
@property (weak, nonatomic) id<CustomTabbarDelegate> customTabbarDelegate;


- (id)initWithFrame:(CGRect)frame cackGroundColor:(UIColor *)color;


-(void)setButtons:(NSArray *)buttonArray;


-(void)buttonPressed:(id)sender;

@end

//委托
@protocol CustomTabbarDelegate

-(void) switchTabBarWithButton:(UIButton *)sender index:(NSInteger)index;

@end
