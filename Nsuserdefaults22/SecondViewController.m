//
//  SecondViewController.m
//  Nsuserdefaults22
//
//  Created by A on 02/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property(nonatomic,weak)IBOutlet UILabel *label1;
@property(nonatomic,weak)IBOutlet UILabel *label2;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label1.text=self.str1;
    
    self.label2.text=self.str2;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
