//
//  ViewController.h
//  SwitchWithActivityIndicator
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UISwitch *swip;
@property(nonatomic,weak)IBOutlet UIActivityIndicatorView *activity;
-(IBAction)switched:(UISwitch *)sender;



@end

