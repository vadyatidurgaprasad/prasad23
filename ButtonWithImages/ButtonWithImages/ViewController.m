//
//  ViewController.m
//  ButtonWithImages
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
-(IBAction)Firstpress :(UIButton *)sender{
    self.imageview.image=[UIImage imageNamed:@"cute"];
    
}
-(IBAction)Secondpress:(UIButton *)sender{
    self.imageview.image=[UIImage imageNamed:@"cute1"];
}

-(IBAction)Thirdpress:(UIButton *)sender{
    self.imageview.image=[UIImage imageNamed:@"suresh"];
    
}
    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
