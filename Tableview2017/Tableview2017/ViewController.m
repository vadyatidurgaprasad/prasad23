//
//  ViewController.m
//  Tableview2017
//
//  Created by A on 09/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
#import "SecondViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *imgarr;
@property(nonatomic,strong)NSArray *arr2;
@property(nonatomic,weak)IBOutlet UITableView *tableview;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    self.imgarr=[NSArray arrayWithObjects:[UIImage imageNamed:@"1"],[UIImage imageNamed:@"2"],[UIImage imageNamed:@"3"],[UIImage imageNamed:@"4"], nil];
    self.arr2=[NSArray arrayWithObjects:@"mikhy,"@"dimpu",@"minnu",@"sony", nil];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.imgarr.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *custom=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    custom.image.image=[self.imgarr objectAtIndex:indexPath.row];
    custom.label.text=[self.arr2 objectAtIndex:indexPath.row];
    custom.date.text=@"8 march 2017";
    custom.time.text=@"10:45";
    custom.image.layer.cornerRadius=custom.image.frame.size.height/2;
    custom.image.layer.masksToBounds=YES;
    return custom;
    
}
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    SecondViewController *secvc=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [self presentViewController:secvc animated:YES completion:nil];
    NSString *str1=[self.arr2 objectAtIndex:indexPath.row];
    NSString *str2=@"8 march 2017";
    NSString *str3=@"8:45";
    str1=[str1 stringByAppendingString:str2];
    str1=[str2 stringByAppendingString:str3];
    secvc.label.text=str1;
    secvc.label.backgroundColor=[UIColor colorWithPatternImage:[self.imgarr objectAtIndex:indexPath.row]];
    UIAlertView *view=[[UIAlertView alloc]initWithTitle:@"ok" message:@"suceess" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:@"cancel", nil];
    [view show];
    
    
    
                                 
    
    
    
                    
}

    
    
    
    
    
    
    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
