//
//  ViewController.m
//  SwitchButton
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

-(IBAction)Switching:(UISwitch *)sender
{
    if (self.switch1.on==YES) {
        self.button.enabled =YES;
    }else
        self.button.enabled =NO;
    
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
