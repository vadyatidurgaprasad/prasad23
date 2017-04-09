//
//  ViewController.m
//  SwitchTaskSecureText
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
    // Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)switching  :(UISwitch *)sender{
    if (sender.on==YES) {
        self.passwordtxt.secureTextEntry=NO;
    }
    self.passwordtxt.secureTextEntry=YES;
    
    
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
