//
//  ViewController.m
//  UiLabel
//
//  Created by A on 14/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label=[[UILabel alloc]init];
    self.label.frame=CGRectMake(40, 40, 80,20);
    [self.view addSubview:self.label];
    self.label.backgroundColor=[UIColor redColor];
    self.label.text=@"Welcome";
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
