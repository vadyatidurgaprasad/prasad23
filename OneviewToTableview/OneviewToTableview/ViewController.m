//
//  ViewController.m
//  OneviewToTableview
//
//  Created by A on 24/03/17.
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



-(IBAction)ClickOnLogin:(UIButton *)sender{
    
    
    
    SecondViewController *sec=[self.storyboard instantiateViewControllerWithIdentifier:@"pawan"];
    [self.navigationController pushViewController:sec animated:YES];
    sec.str1=self.user.text;
    NSLog(@"%@",sec.str1);
    sec.str2=self.paswrd.text;
    NSLog(@"%@",sec.str2);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
