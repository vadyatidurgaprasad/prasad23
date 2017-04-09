//
//  ViewController.m
//  nsuserdefaults
//
//  Created by A on 02/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property(nonatomic,weak)IBOutlet UITextField *txtfld1;
@property(nonatomic,weak)IBOutlet UITextField *txtfld2;
@property(nonatomic ,weak)IBOutlet UISwitch *switchbutton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    self.txtfld1.text=[defaults objectForKey:@"prasad"];
    self.txtfld2.text=[defaults objectForKey:@"durga"];
    [defaults synchronize];
    
                       
    
    
    
    
}

-(IBAction)switchbutton:(UISwitch *)sender{
    if (self.switchbutton.on==YES) {
        NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
        [defaults setObject:self.txtfld1.text forKey:@"prasad"];
        [defaults setObject:self.txtfld2.text forKey:@"durga"];
        [defaults synchronize];
    }
 
}

        
-(IBAction)getdata:(UIButton *)sender{
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController *scvc=segue.destinationViewController;
    scvc.str1=self.txtfld1.text;
    scvc.str2=self.txtfld2.text;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
