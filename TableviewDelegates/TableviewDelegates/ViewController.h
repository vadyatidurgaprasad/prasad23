//
//  ViewController.h
//  TableviewDelegates
//
//  Created by A on 22/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UITableView *tableview;
@property(nonatomic,weak)IBOutlet UIButton *button;
@property(nonatomic,strong)NSMutableArray *arry;
@property(nonatomic,strong)NSMutableArray *arry1;

-(IBAction)MoveToSecond:(UIButton *)sender;

@end

