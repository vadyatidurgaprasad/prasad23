//
//  ViewController.m
//  Uiprogresview2017
//
//  Created by A on 14/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIProgressView *progresview;
    NSTimer *timer;
    float val;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    val=0.0;
    progresview=[[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
    progresview.frame=CGRectMake(50, 100, 200, 30);
    [self.view addSubview:progresview];
    progresview.backgroundColor=[UIColor redColor];
    progresview.tintColor=[UIColor greenColor];
    progresview.trackTintColor=[UIColor yellowColor];
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateprogress) userInfo:nil repeats:YES];
}
-(void)updateprogress{
    val=val+0.1;
    progresview.progress=val;
    
    
    if (val >= 1.0) {
        [timer invalidate];
    }
}


    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
