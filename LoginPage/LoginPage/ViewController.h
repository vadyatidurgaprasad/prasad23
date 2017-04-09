//
//  ViewController.h
//  LoginPage
//
//  Created by A on 14/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *usertxt;
    IBOutlet UITextField *passtxt;
    IBOutlet UIButton *check;
    IBOutlet UIButton *loginbutn;
    NSString *username;
    NSString *password;
    NSString *image2;
    int i;
    NSUserDefaults *defaults;
    UIAlertController *alertcontroller;
    
    
    
}


    
                     
    -(IBAction)taponbuttom:(UIButton *)sender;
    
    
    
    


@end

