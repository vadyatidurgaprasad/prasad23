//
//  ViewController.m
//  AnimationImageTime
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
    
    self.arr=[NSArray array];
    for ( int i=1; i<10; i++) {
        self.imgview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]];
        
        }
    
    self.imgview.animationImages=[NSArray arrayWithArray:self.arr];
    self.imgview.animationRepeatCount=0;
    
    
}




-(IBAction)Start:(UIButton *)sender{
    int a=[self.txtfld.text intValue];
    self.imgview.animationDuration=a;
    [self.imgview startAnimating];
    
    
    
    
    
    
    
}
-(IBAction)Stop:(UIButton *)sender{
    [self.imgview stopAnimating];
    
    
    
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
