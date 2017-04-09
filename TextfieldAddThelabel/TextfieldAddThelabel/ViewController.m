//
//  ViewController.m
//  TextfieldAddThelabel
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(IBAction)addbutton:(UIButton *)sender{
    NSString *str=self.txtfld.text;
    NSString *str1=self.txtfld1.text;
    NSString *str2=self.txtfld2.text;
    str=[str stringByAppendingString:str1];
    str=[str stringByAppendingString:str2];
    self.label.text=str;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
