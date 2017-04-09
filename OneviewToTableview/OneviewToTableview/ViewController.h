//
//  ViewController.h
//  OneviewToTableview
//
//  Created by A on 24/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol dataprocess<NSObject>

@end
@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UITextField *user;
@property(nonatomic,weak)IBOutlet UITextField *paswrd;
@property(nonatomic,weak)IBOutlet UIButton *login;
-(IBAction)ClickOnLogin:(UIButton *)sender;

@end

