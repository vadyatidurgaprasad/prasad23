//
//  ViewController.m
//  TextfieldTask
//
//  Created by A on 05/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property(nonatomic,weak)IBOutlet UITextField *textfield;
@property(nonatomic,weak)IBOutlet UILabel *label;
@property(nonatomic,strong)NSString *str;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    }

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.textfield.text=self.label.text;
    self.label.text=self.textfield.text;
    return YES;
    }
    




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
