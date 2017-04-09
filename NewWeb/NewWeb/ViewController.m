//
//  ViewController.m
//  NewWeb
//
//  Created by A on 30/03/17.
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
    [self GetContact];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    
    
    
}
-(void)GetContact{
    NSString *urlstrng=@"http://gojek-contacts-app.herokuapp.com/contacts.json";
    NSURL *url=[NSURL URLWithString:urlstrng];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
    [request setHTTPBody:@"GET"];
    [request setValue:@"Application/json" forHTTPHeaderField:@"Content-type"];
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
   cell.label1.text=[dict objectForKey:@"first_name"];
   cell.label2.text=[dict objectForKey:@"last_name"];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
