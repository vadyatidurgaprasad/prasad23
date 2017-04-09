//
//  SecondViewController.m
//  OneviewToTableview
//
//  Created by A on 24/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()<UITableViewDelegate,UITableViewDataSource>




@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arr=[[NSMutableArray alloc]init];
    self.arr1=[[NSMutableArray alloc]init];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    [self.arr addObject:self.str1];
    [self.arr1 addObject:self.str2];
    [self.tableview reloadData];
    
    
    }

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text=[self.arr objectAtIndex:indexPath.row];
    NSLog(@"%@",cell.textLabel.text);
    cell.detailTextLabel.text=[self.arr1 objectAtIndex:indexPath.row];
    NSLog(@"%@",cell.detailTextLabel.text);
    return cell;
    
    
    
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
