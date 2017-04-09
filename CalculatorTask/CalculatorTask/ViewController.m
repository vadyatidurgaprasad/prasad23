//
//  ViewController.m
//  CalculatorTask
//
//  Created by A on 08/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,weak)IBOutlet UILabel *label;
@property(nonatomic,weak)IBOutlet UILabel *label1;
@property(nonatomic,weak)IBOutlet UITextField *textfield;
@property(nonatomic,weak)IBOutlet UITextField *textfield1;
@property(nonatomic,weak)IBOutlet UIButton *button;
@property(nonatomic,weak)IBOutlet UIButton *button1;
@property(nonatomic,weak)IBOutlet UIButton *button2;
@property(nonatomic,weak)IBOutlet UIButton *button3;
@property(nonatomic,weak)IBOutlet UILabel *resultlabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(IBAction)ClinckOnAdd:(UIButton *)sender{
    NSString *num1=self.textfield.text;
    NSString *num2=self.textfield1.text;
    int a =[num1 intValue];
    int b =[num2 intValue];
    int c=a+b;
    self.resultlabel.text=[NSString stringWithFormat:@"%d",c];
}
-(IBAction)ClickOnSub:(UIButton *)sender{
    NSString *num1=self.textfield.text;
    NSString *num2=self.textfield1.text;
    int a =[num1 intValue];
    int b =[num2 intValue];
    int c=a-b;
    self.resultlabel.text=[NSString stringWithFormat:@"%d",c];
}
-(IBAction)ClickOnMul:(UIButton *)sender{
    NSString *num1=self.textfield.text;
    NSString *num2=self.textfield1.text;
    int a =[num1 intValue];
    int b =[num2 intValue];
    int c=a*b;
    self.resultlabel.text=[NSString stringWithFormat:@"%d",c];
}
-(IBAction)ClickOnDiv:(UIButton *)sender{
    NSString *num1=self.textfield.text;
    NSString *num2=self.textfield1.text;
    int a =[num1 intValue];
    int b =[num2 intValue];
    float c;
    if (b==0) {
        self.resultlabel.text=@"please enter second value other than zero";
        
    }
    else
    {
        c=a/b;
        self.resultlabel.text=[NSString stringWithFormat:@"%f",c];
        
        
    }
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
