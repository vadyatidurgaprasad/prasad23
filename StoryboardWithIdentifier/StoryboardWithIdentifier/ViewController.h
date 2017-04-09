//
//  ViewController.h
//  StoryboardWithIdentifier
//
//  Created by A on 16/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UITextField *textfield;
@property(nonatomic,weak)IBOutlet UIButton *button;
@property(nonatomic,strong)NSString *str1;

-(IBAction)ClickOnButton:(UIButton *)sender;



@end

