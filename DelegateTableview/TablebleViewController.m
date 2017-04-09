//
//  TablebleViewController.m
//  DelegateTableview
//
//  Created by A on 20/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "TablebleViewController.h"
#import "ViewController.h"


@interface TablebleViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,weak)IBOutlet UITableView *tableview;
@property(nonatomic,strong)NSArray *arr;


@end

@implementation TablebleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    self.arr=[NSArray arrayWithObjects:@"prasad",@"durga",@"dilip",@"vara",@"lavanya",@"mohan", nil];
    
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    TablebleViewController *view1=[self.storyboard instantiateViewControllerWithIdentifier:@"first"];
    self.arr=[self.arr objectAtIndex:indexPath.row];
    
    
    
//    text=[self.arr objectAtIndex:indexPath.row];
//    sec.img.image=[self.imgarr objectAtIndex:indexPath.row];
//    [self presentViewController:sec animated:YES completion:nil];

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
