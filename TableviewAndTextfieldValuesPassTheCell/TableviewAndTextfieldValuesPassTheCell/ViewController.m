//
//  ViewController.m
//  TableviewAndTextfieldValuesPassTheCell
//
//  Created by A on 22/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()< UITableViewDataSource,UITableViewDelegate,dataprocess>

@property(nonatomic,weak)IBOutlet UITableView *tableview;
@property(nonatomic,strong)NSMutableArray *arr;
@property(nonatomic,strong)NSMutableArray *arr1;
@property(nonatomic,strong)NSUserDefaults *defaults;





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arr=[NSMutableArray array];
    
    self.arr1=[NSMutableArray array];
    
    
    
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    
    
}




-(void)transfer:(NSString *)vdp{
    if ([self.arr containsObject:vdp]) {
        [self.arr removeObject:vdp];
        [self.tableview reloadData];
    }else{
    
        
        
    
    [self.arr addObject:vdp];
    [self.tableview reloadData];
    }

    
}
-(void)transfer1:(NSString *)vdp1{
    if ([self.arr1 containsObject:vdp1]) {
        [self.arr1 removeObject:vdp1];
        [self.tableview reloadData];
    }else{
        
    [self.arr1 addObject:vdp1];
    [self.tableview reloadData];
    
    }
}





-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arr.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.detailTextLabel.text=[self.arr objectAtIndex:indexPath.row];
    cell.textLabel.text=[self.arr1 objectAtIndex:indexPath.row];
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)second:(UIButton *)sender{
    SecondViewController *secvc=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [self.navigationController pushViewController:secvc animated:YES];
    secvc.delegate=self;
    
}




@end
