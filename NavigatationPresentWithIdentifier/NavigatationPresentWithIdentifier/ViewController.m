//
//  ViewController.m
//  NavigatationPresentWithIdentifier
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(IBAction)Press2:(UIButton *)sender{
  SecondViewController *secvc=[self.storyboard instantiateViewControllerWithIdentifier:@"2"];
   [self presentViewController:secvc animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
