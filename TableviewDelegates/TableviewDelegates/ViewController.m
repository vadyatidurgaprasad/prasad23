//
//  ViewController.m
//  TableviewDelegates
//
//  Created by A on 22/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,datasending>




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableview.dataSource=self;
    self.tableview.delegate=self;
    self.arry=[NSMutableArray array];
    self.arry1=[NSMutableArray array];
    
}
-(void)sending1:(NSString *)data{
    [self.arry addObject:data];
    [self.tableview reloadData];
    
    
    
    
    
}
-(void)sending2:(NSString *)data2{
    [self.arry1 addObject:data2];
    [self.tableview reloadData];
    
    
}








-(IBAction)MoveToSecond:(UIButton *)sender{
    SecondViewController *second=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [self.navigationController pushViewController:second animated:YES];
    
    second.delegate=self;
    
    
}








-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arry.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.detailTextLabel.text=[self.arry objectAtIndex:indexPath.row];
    cell.textLabel.text=[self.arry1 objectAtIndex:indexPath.row];
    
     
    
    return cell;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
