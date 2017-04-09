//
//  FifthViewController.m
//  NavigatationPresentWithIdentifier
//
//  Created by A on 21/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "FifthViewController.h"
#import "SixthViewController.h"
@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)next:(UIButton *)sender{
    SixthViewController *sixth=[self.storyboard instantiateViewControllerWithIdentifier:@"6"];
    [self presentViewController:sixth animated:YES completion:nil];
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
