//
//  ViewController.m
//  SliderTask
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
-(IBAction)Slider:(UISlider *)sender{
    self.label.text=[NSString stringWithFormat:@"%f",self.slider.value];
    
}


    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
