//
//  ViewController.m
//  alertviewprasad
//
//  Created by A on 08/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property(nonatomic,weak)IBOutlet UITextField *textfield;
//@property(nonatomic,weak)IBOutlet UITextField *textfield1;
//@property(nonatomic,weak)IBOutlet UIButton *button;
//@property(nonatomic,strong)NSString *str;
//@property(nonatomic,strong)NSString *str1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}





-(void)alertview{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Username and Password" message:@"successfully logined" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"done",nil];
    alert.alertViewStyle=UIAlertActionStyleDestructive;
    
    [alert show];
    
}

    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
