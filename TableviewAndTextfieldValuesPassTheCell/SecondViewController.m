//
//  SecondViewController.m
//  TableviewAndTextfieldValuesPassTheCell
//
//  Created by A on 22/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



-(IBAction)ClickTheBack:(UIButton *)sender{
    self.str=self.txtfld.text;
    self.str1=self.txtfld1.text;
    [self.delegate transfer:self.str];
    [self.delegate transfer1:self.str1];
    [self.navigationController popViewControllerAnimated:YES];
    

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
