//
//  CustomTableViewCell.h
//  Tableview2017
//
//  Created by A on 09/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property(nonatomic,weak)IBOutlet UIImageView *image;
@property(nonatomic,weak)IBOutlet UILabel *label;
@property(nonatomic,weak)IBOutlet UILabel *date;
@property(nonatomic,weak)IBOutlet UILabel *time;

@end
