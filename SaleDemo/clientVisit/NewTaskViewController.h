//
//  NewTaskViewController.h
//  SaleDemo
//
//  Created by wuzhensong on 14-4-27.
//  Copyright (c) 2014年 mosh. All rights reserved.
//

#import "BaseViewController.h"
#import "TaskModel.h"
#import "CityPickerView.h"
#import "WSDatePickerView.h"
#import "WSPickerView.h"
#import "ClientVisitListViewController.h"

typedef  enum{
    TaskState_new,
    TaskState_finish,
}TaskState;

@interface NewTaskViewController : BaseViewController<UITextFieldDelegate,CityPickerViewDelegate,WSDatePickerViewDelegate,WSPickerViewDelegate,ClientVisitListControllerDelegate>

@property (nonatomic ,assign) TaskState taskState;
@property (nonatomic , strong) TaskModel *task;


//@property (nonatomic, strong) WSDatePickerView  *datePicker;
//@property (nonatomic, strong) CityPickerView *cityPiceker;
@property (weak, nonatomic) IBOutlet UIScrollView *baseScrollView;
@property (weak, nonatomic) IBOutlet UIButton *timeButton;
@property (weak, nonatomic) IBOutlet UIButton *dateButton;
@property (weak, nonatomic) IBOutlet UITextField *clientText;
@property (weak, nonatomic) IBOutlet UIButton *cityButton;
@property (weak, nonatomic) IBOutlet UITextField *addressText;
@property (weak, nonatomic) IBOutlet UIButton *imageButton;
@property (weak, nonatomic) IBOutlet UIButton *stateButton;
@property (weak, nonatomic) IBOutlet UIButton *remarkButton;
@property (weak, nonatomic) IBOutlet UIButton *alertButton;
@property (weak, nonatomic) IBOutlet UITextField *otherText;
@property (weak, nonatomic) IBOutlet UIButton *uploadButton;
@property (nonatomic, strong) WSPickerView *pickerView_state;//重要
@property (nonatomic, strong) WSPickerView *pickerView_alert;//提醒
@property (nonatomic, strong) WSPickerView *pickerView_remark;//备注
@property (nonatomic, strong) WSDatePickerView *pickerView_date;//日期
@property (nonatomic, strong) WSDatePickerView *pickerView_time;//时间
@property (nonatomic, strong) CityPickerView *pickerView_city;//城市
- (IBAction)dateClick:(id)sender;
- (IBAction)timeClick:(id)sender;

- (IBAction)upload:(id)sender;

- (IBAction)addImage:(id)sender;
- (IBAction)cityClick:(id)sender;
- (IBAction)remarkClick:(id)sender;
- (IBAction)stateClick:(id)sender;
- (IBAction)alertClick:(id)sender;
- (IBAction)clientList:(id)sender;

@end
