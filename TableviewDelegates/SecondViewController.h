//
//  SecondViewController.h
//  TableviewDelegates
//
//  Created by A on 22/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol datasending<NSObject>;
-(void)sending1:(NSString *)data;
-(void)sending2:(NSString *)data2;

@end
@interface SecondViewController : UIViewController
@property(nonatomic,weak)IBOutlet UITextField *txtfld;
@property(nonatomic,weak)IBOutlet UITextField *txtfld1;
@property(nonatomic,weak)IBOutlet UIButton *button;
@property(nonatomic,strong)NSString *str;
@property(nonatomic,strong)NSString *str1;
@property(nonatomic,assign)id<datasending>delegate;
-(IBAction)MoveToFirst:(UIButton *)sender;
@end
