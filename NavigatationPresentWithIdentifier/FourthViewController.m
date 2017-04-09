//
//  FourthViewController.m
//  NavigatationPresentWithIdentifier
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "FourthViewController.h"
#import "FifthViewController.h"
@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(IBAction)next:(UIButton *)sender{
    FifthViewController *fifth=[self.storyboard instantiateViewControllerWithIdentifier:@"5"];
    [self presentViewController:fifth animated:YES completion:nil];
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
