//
//  ViewController.h
//  ActivityIndicator
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UIActivityIndicatorView *activtiy;
@property(nonatomic,weak)IBOutlet UITextField *txtfld;
@property(nonatomic,weak)IBOutlet UILabel *label;
@property(nonatomic,weak)IBOutlet UIButton *button;
-(IBAction)ClickOnButton:(UIButton *)sender;



@end

