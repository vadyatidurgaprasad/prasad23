//
//  ViewController.m
//  DelegateTableview
//
//  Created by A on 20/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "TablebleViewController.h"
@interface ViewController ()<datarecieving>
@property(nonatomic,weak)IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(IBAction)PressNext:(UIButton *)sender{
    TablebleViewController *secvc=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [secvc.navigationController pushViewController:secvc animated:YES];
    secvc.delegate=self;
    
}

-(void)recievingdata:(NSString *)data{
    self.label.text=data;
    [self.navigationController popViewControllerAnimated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
