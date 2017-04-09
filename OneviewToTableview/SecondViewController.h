//
//  SecondViewController.h
//  OneviewToTableview
//
//  Created by A on 24/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property(nonatomic,weak)IBOutlet UITableView *tableview;
@property(nonatomic,strong)NSString *str1;
@property(nonatomic,strong)NSString *str2;
@property(nonatomic,strong)NSMutableArray *arr;
@property(nonatomic,strong)NSMutableArray *arr1;

@end
