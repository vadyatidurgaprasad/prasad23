//
//  ViewController.m
//  ActivityIndicator
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

-(IBAction)ClickOnButton:(UIButton *)sender{
    if ([self.txtfld.text isEqualToString:@"prasad"]) {
        [self.activtiy startAnimating];
        self.label.text=@"";
        
    }else if ([self.txtfld.text isEqualToString:@"bhavan"]){
        [self.activtiy stopAnimating];
        self.label.text=@"";
        
    }
    else
        self.label.text=@"ur enter text wrong";
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
