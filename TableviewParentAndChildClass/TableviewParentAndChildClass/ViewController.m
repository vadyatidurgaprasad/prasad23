//
//  ViewController.m
//  TableviewParentAndChildClass
//
//  Created by A on 30/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
//    self.arr1=[[NSMutableArray alloc]init];
    self.arr1=[NSMutableArray arrayWithObjects:@"prasad",@"durga",@"pradeep", nil];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arr1.count;
    
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.label.text=[self.arr1 objectAtIndex:indexPath.row];
    cell.label2.text=[self.arr1 objectAtIndex:indexPath.row];
    cell.label3.text=[self.arr1 objectAtIndex:indexPath.row];
    
    

    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
