//
//  ViewController.h
//  AnimationImageTime
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UIImageView *imgview;
@property(nonatomic,weak)IBOutlet UITextField *txtfld;
@property(nonatomic,weak)IBOutlet UIButton *startbtn;
@property(nonatomic,weak)IBOutlet UIButton *stopbtn;
@property(nonatomic,strong)NSArray *arr;


@end

