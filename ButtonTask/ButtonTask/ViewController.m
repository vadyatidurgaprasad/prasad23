//
//  ViewController.m
//  ButtonTask
//
//  Created by A on 20/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,weak)IBOutlet UIButton *butn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 90, 80)];
    [self.view addSubview:self.button];
    self.button.backgroundColor=[UIColor redColor];
    [self.button setTitle:@"Normal" forState:UIControlStateNormal];
    [self.button setTitle:@"highlited" forState:UIControlStateHighlighted];
    [self.button setTitle:@"Selected" forState:UIControlStateSelected];
    [self.butn setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [self.butn setBackgroundImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(ClickOn) forControlEvents:UIControlEventTouchUpInside];
}
-(void)ClickOn{
    self.view.backgroundColor=[UIColor yellowColor];
    
}
-(IBAction)Selected :(UIButton *)sender{
    self.butn.selected=YES;
    
}

    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
