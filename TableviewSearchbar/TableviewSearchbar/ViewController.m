//
//  ViewController.m
//  TableviewSearchbar
//
//  Created by A on 23/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSMutableArray *data;
@property(nonatomic,weak)IBOutlet UITableView *tableview;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text=[self.data objectAtIndex:indexPath.row];
    return cell;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSMutableArray *)data{
    if (!_.data){
        
    
        
    
        self.data=[[NSMutableArray alloc]init];
        NSNumberFormatter *formatter=[[NSNumberFormatter alloc]init];
        formatter.numberStyle=NSNumberFormatterSpellOutStyle;
        for (int i=0; i<30;i++){
            NSNumber *thisnumber=[NSNumber numberWithInt:i];
            NSString *spelloutnumber=[formatter stringFromNumber:thisnumber];
            [self.data addObject:spelloutnumber];
        }
    }
    return self.data;
    
    
    
    }


@end
