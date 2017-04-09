//
//  ViewController.m
//  Uiview
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
    self.view1 =[[UIView alloc]init];
    self.view1.frame=CGRectMake(10,20, 90, 90);
    [self.view addSubview:self.view1];
    self.view1.backgroundColor=[UIColor redColor];
    self.view2 =[[UIView alloc]init];
    self.view2.frame=CGRectMake(80, 80, 90, 80);
    [self.view1 addSubview:self.view2];
    self.view2.backgroundColor=[UIColor greenColor];
    self.view3.backgroundColor=[UIColor yellowColor];
    self.view4.backgroundColor=[UIColor blueColor];
    self.view4.layer.borderColor=[UIColor purpleColor].CGColor;
    self.view4.layer.cornerRadius=15.0;
    self.view4.layer.borderWidth=10.0;
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
