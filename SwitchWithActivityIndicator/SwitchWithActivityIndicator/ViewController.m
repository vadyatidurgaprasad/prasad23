//
//  ViewController.m
//  SwitchWithActivityIndicator
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
-(IBAction)switched:(UISwitch *)sender{
    if (self.swip.on==YES) {
        [self.activity startAnimating];
        
    }else [self.activity stopAnimating];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
