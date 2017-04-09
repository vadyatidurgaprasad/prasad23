//
//  ViewController.m
//  PickerView
//
//  Created by A on 31/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,weak)IBOutlet UIDatePicker *datePicker;
@property(nonatomic,weak)IBOutlet UILabel *label;
-(IBAction)setdate :(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str=[[NSDate date];
    [datePicker setm]
    
}


-(IBAction)setdate :(UIButton *)sender{
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc]init];
    [dateFormater setDateFormat:@"dd/MM/yyyy hh:mm:ss"];
    NSString *strDate =[dateFormater stringFromDate:datePicker.date];
    lbl.text = strDate;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
