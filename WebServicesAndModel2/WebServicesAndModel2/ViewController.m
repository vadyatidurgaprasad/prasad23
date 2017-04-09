//
//  ViewController.m
//  WebServicesAndModel2
//
//  Created by A on 04/04/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSMutableArray *jsonobj;
@property(nonatomic,weak)IBOutlet UITableView *tableview;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self GetContactList];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    
}
-(void)GetContactList{
  NSString *urlstr=@"http://gojek-contacts-app.herokuapp.com/contacts.json";
    NSURL *url=[NSURL URLWithString:urlstr];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
    [request setHTTPBody:@"GET"];
    [request setValue:@"Aplication/json" forHTTPHeaderField:@"Content-Type"];
    NSURLSession *session=[NSURLSession sharedSession];
    NSURLSessionDataTask *data=[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSError *err;
        NSLog(@"Block");
        self.jsonobj=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        NSLog(@"%@",self.jsonobj);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableview reloadData];
            
        });
     
    }];
    
    [data resume];
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.jsonobj.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSDictionary *dict=[self.jsonobj objectAtIndex:indexPath.row];
    cell.label.text=[dict objectForKey:@"first_name"];
    cell.label1.text=[dict objectForKey:@"last_name"];
    cell.imageView.image=[UIImage imageNamed:[dict objectForKey:@"profile_pic"]];
    if (indexPath.row==0) {
        cell.backgroundColor=[UIColor redColor];
    }else if (indexPath.row==1){
        cell.backgroundColor=[UIColor yellowColor];
        
    }if (indexPath.row==2) {
        cell.backgroundColor=[UIColor greenColor];
    }else if (indexPath.row==3){
        cell.backgroundColor=[UIColor blueColor];
        
    }if (indexPath.row==4) {
        cell.backgroundColor=[UIColor purpleColor];
        
        
    }else if (indexPath.row==5){
        cell.backgroundColor=[UIColor grayColor];
        
    }if (indexPath.row==6) {
        cell.backgroundColor=[UIColor yellowColor];
        
    }
    return cell;
    
}
  

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
