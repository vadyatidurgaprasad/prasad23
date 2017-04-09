//
//  ViewController.m
//  Nsuserdefaults22
//
//  Created by A on 02/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property(nonatomic,weak)IBOutlet UITextField *textfld1;
@property(nonatomic,weak)IBOutlet UITextField *textfld2;
@property(nonatomic,weak)IBOutlet UISwitch *switchbutton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    self.textfld1.text=[defaults objectForKey:@"vara"];
    self.textfld2.text=[defaults objectForKey:@"mohan"];
    [defaults synchronize];
    
    
}
-(IBAction)switchbutton:(UISwitch *)sender{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    if (self.switchbutton.on==YES) {
        [defaults setObject:self.textfld1.text forKey:@"vara"];
        [defaults setObject:self.textfld2.text forKey:@"mohan"];
        [defaults synchronize];
        
    }
    
    
}
-(IBAction)getdata:(UIButton *)sender{
    
}




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController *secvc=segue.destinationViewController;
    secvc.str1=self.textfld1.text;
    secvc.str2=self.textfld2.text;
    
    
}
  






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
