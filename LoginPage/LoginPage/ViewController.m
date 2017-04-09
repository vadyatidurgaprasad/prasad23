//
//  ViewController.m
//  LoginPage
//
//  Created by A on 14/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    defaults=[NSUserDefaults standardUserDefaults];
    username =[defaults objectForKey:@"username"];
    password=[defaults objectForKey:@"password"];
    usertxt=username;
    passtxt=password;
    image2=[defaults objectForKey:@"check"];
    [check setBackgroundImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [check setBackgroundImage:[UIImage imageNamed:@"image2"] forState:UIControlStateNormal];
    i=0;
    
}

-(IBAction)taponbuttom:(UIButton *)sender{
    
    
    if (sender.tag==1) {
        if (i==0)
            
        {
        
            [check setBackgroundImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
        i++;
        
        } else{
            [check setBackgroundImage:[UIImage imageNamed:@"image2"] forState:UIControlStateNormal];
            i--;
        }
    }
    if (sender.tag==0) {
        if ([usertxt.text isEqualToString:@"prasad"]) {
            if ([passtxt.text isEqualToString:@"mohan"]) {
        
                if (i==1) {
                    [defaults setObject:@"" forKey:@"username"];
                    [defaults setObject:@"" forKey:@"password"];
                    [defaults setObject:@"1" forKey:@"check"];
                    [defaults synchronize];
                    alertcontroller=[UIAlertController alertControllerWithTitle:@"Login Successfully" message:nil preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *ok=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
                    [alertcontroller addAction:ok];
                    [self presentViewController:alertcontroller animated:YES completion:nil];
                    
                }else{
                    [defaults setObject:username forKey:@"userName"];
                    [defaults setObject:password forKey:@"password"];
                    [defaults setObject:@"2" forKey:@"check"];
                    [defaults synchronize];
                    alertcontroller=[UIAlertController alertControllerWithTitle:@"Login Successfully" message:nil preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *ok=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
                    [alertcontroller addAction:ok];
                    [self presentViewController:alertcontroller animated:YES completion:nil];
                    
                }
                
            }else{
                alertcontroller=[UIAlertController alertControllerWithTitle:@"Logoin Failed" message:@"Invalid Password" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *ok=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
                [alertcontroller addAction:ok];
                [self presentViewController:alertcontroller animated:YES completion:nil];
            }
        }else{
            alertcontroller=[UIAlertController alertControllerWithTitle:@"Login Failed" message:@"Invalid Username" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
            [alertcontroller addAction:ok];
            [self presentViewController:alertcontroller animated:YES completion:nil];
        }
        
    }
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)login:(UIButton *)sender {
}
@end
