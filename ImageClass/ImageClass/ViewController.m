//
//  ViewController.m
//  ImageClass
//
//  Created by A on 06/04/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imaged =[[UIImageView alloc]init];
    self.imaged.frame = CGRectMake(60, 80, 90, 100);
    self.imaged.backgroundColor=[UIColor blueColor];
    [self.view addSubview:self.imaged];
    [self.imaged setImage:[UIImage imageNamed:@"balaji"]];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
