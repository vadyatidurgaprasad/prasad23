//
//  ViewController.m
//  StoryboardWithIdentifier
//
//  Created by A on 16/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(IBAction)ClickOnButton:(UIButton *)sender{
    SecondViewController *secvc=[self.storyboard instantiateViewControllerWithIdentifier:@"sewag"];
    [self presentViewController:secvc animated:YES completion:nil];
    secvc.label.text=self.textfield.text;
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
