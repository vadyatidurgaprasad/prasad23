//
//  SecondViewController.h
//  TableviewAndTextfieldValuesPassTheCell
//
//  Created by A on 22/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol dataprocess<NSObject>
-(void)transfer:(NSString *)vdp;
-(void)transfer1:(NSString *)vdp1;
@end


@interface SecondViewController : UIViewController
@property(nonatomic,assign)id<dataprocess>delegate;
@property(nonatomic,strong)NSString *str;
@property(nonatomic,strong)NSString *str1;
@property(nonatomic,weak)IBOutlet UITextField *txtfld;
@property(nonatomic,weak)IBOutlet UITextField *txtfld1;


@end
