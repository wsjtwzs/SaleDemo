//
//  CustomTabbar.m
//  MoshActivity
//
//  Created by  evafan2003 on 12-12-29.
//  Copyright (c) 2012年 cn.mosh. All rights reserved.
//

#import "CustomTabbar.h"
#import "GlobalConfig.h"

#define AddTag 120
@implementation CustomTabbar
@synthesize customTabbarDelegate;
@synthesize oldTag;

- (id)initWithFrame:(CGRect)frame cackGroundColor:(UIColor *)color
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = color;
        self.buttonArray = [NSMutableArray array];
    }
    return self;
}

-(void)setButtons:(NSArray *)buttonArray {
    
    oldTag = 0 + AddTag;
    for (int i =0; i<buttonArray.count; i++) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(320/(buttonArray.count)*i+1, 0, 320/buttonArray.count , self.frame.size.height);
        button.tag = i + AddTag;
        button.titleLabel.font = [UIFont systemFontOfSize:14];
        [button setTitle:[buttonArray objectAtIndex:i] forState:UIControlStateNormal];
        [button setTitleColor:i==0?[UIColor redColor]:WHITECOLOR forState:UIControlStateNormal];
//        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        [self.buttonArray addObject:button];

        UILabel *label = [GlobalConfig createLabelWithFrame:CGRectOffset(button.frame, button.frame.size.width, 0) Text:@"" FontSize:10 textColor:WHITECOLOR];
        CGRect rect = label.frame;
        rect.size.width = 1;
        label.frame = rect;
        [self addSubview:label];
        
        
        
     
    }
}

-(void)buttonPressed:(id)sender {
    
        UIButton *button = (UIButton *)sender;
    if (button.tag != oldTag) {
        
        for (UIButton *view in self.buttonArray) {
            [view setTitleColor:WHITECOLOR forState:UIControlStateNormal];
        }

        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        
        [customTabbarDelegate switchTabBarWithButton:button index:(button.tag - AddTag)];
        oldTag = button.tag;
    }
}

- (void) replaceButtonTitle:(NSArray *)buttonArray
{
    for (int i = 0;i < buttonArray.count;i++) {
        if (i < self.subviews.count) {
            UIButton *button = (UIButton *)[self viewWithTag:i + AddTag];
            [button setTitle:buttonArray[i] forState:UIControlStateNormal];
        }
    }
    
}

@end
