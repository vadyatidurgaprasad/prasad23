//
//  SixthViewController.m
//  NavigatationPresentWithIdentifier
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "SixthViewController.h"
#import "SecondViewController.h"
#import "FifthViewController.h"
@interface SixthViewController ()

@end

@implementation SixthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)nexttosecond:(UIButton *)sender{
    SecondViewController *secvc=[self.storyboard instantiateViewControllerWithIdentifier:@"2"];
    [self presentViewController:secvc animated:YES completion:nil];
}

-(IBAction)Back:(UIButton *)sender{
    {
        [self dismissViewControllerAnimated:YES completion:nil];
    }

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
