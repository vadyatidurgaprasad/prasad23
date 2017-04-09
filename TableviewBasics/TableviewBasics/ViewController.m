//
//  ViewController.m
//  TableviewBasics
//
//  Created by A on 23/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,weak)IBOutlet UITableView *tableview;
@property(nonatomic,strong)NSMutableArray *imagearray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    [self arrsetup];
    
}
-(void)arrsetup{
    

    self.imagearray=[NSMutableArray arrayWithObjects:@"yuvi",@"sachin",@"pawan",@"uday",@"swami",@"virat",nil];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.imagearray.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.imageView.image=[UIImage imageNamed:[self.imagearray objectAtIndex:indexPath.row]];
    cell.detailTextLabel.text=[self.imagearray objectAtIndex:indexPath.row];
    cell.textLabel.text=[NSString stringWithFormat:@"%d",(int)indexPath.row +1];
    cell.contentView.layer.borderWidth=8;
    cell.contentView.layer.cornerRadius=2;
    cell.contentView.layer.backgroundColor=[[UIColor yellowColor]CGColor];
    return cell;
    
}



-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
  
    if (editingStyle==UITableViewCellEditingStyleDelete) {
        [self.imagearray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        }
        }
-(IBAction)Refresh:(id)sender{
    [self.tableview reloadData];
    
    
}
-(IBAction)Edit:(id)sender{
    self.tableview.editing=!_tableview.editing;
     
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
