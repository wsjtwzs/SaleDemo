//
//  TaskCell.m
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "TaskCell.h"

@implementation TaskCell

- (void) setValueWithTaskModel:(TaskModel *)model
{
    self.visitClient.text = [NSString stringWithFormat:@"拜访对象：%@",model.client];
    self.visitAddress.text = [NSString stringWithFormat:@"位置：%@%@",model.city,model.address];
    self.visitDate.text = [NSString stringWithFormat:@"%@ %@",model.date,model.time];
    self.visitRemark.text = [NSString stringWithFormat:@"备注：%@",model.remark];
    self.visitFinish.hidden = !model.finish;
    self.finishButton.hidden = model.finish;

}

- (IBAction)finishVisit:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"确定将此任务设为已完成" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [self.window addSubview:alert];
    [alert show];
}

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        
        if ([self.delegate respondsToSelector:@selector(finishButtonClick:)]) {
            [self.delegate finishButtonClick:self];
        }

    }
}
@end
