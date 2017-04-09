//
//  CustomTableViewCell.h
//  TableviewParentAndChildClass
//
//  Created by A on 30/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface CustomTableViewCell : UITableViewCell
@property(nonatomic,weak)IBOutlet UILabel *label;
@property(nonatomic,weak)IBOutlet UILabel *label2;
@property(nonatomic,weak)IBOutlet UILabel *label3;

@end
