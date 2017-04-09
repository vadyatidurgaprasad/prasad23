//
//  ViewController.m
//  PracticeWeb
//
//  Created by A on 28/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSMutableArray *jason;
@property(nonatomic,weak)IBOutlet UITableView *tableview;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getConatct];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    
    
    
}
-(void)getConatct{
    
  NSString *str =@"http://gojek-contacts-app.herokuapp.com/contacts.json";
    NSURL *url=[NSURL URLWithString:str];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"GET"];
    [request setValue:@"Appplication/json" forHTTPHeaderField:@"Content-Type"];
    NSURLSession *session=[NSURLSession sharedSession];
    NSURLSessionDataTask *datatask=[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSError *err;
        NSLog(@"block");
     self.jason=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        NSLog(@"%@",self.jason);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableview reloadData];
            
        });

        
        }];
    [datatask resume];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.jason.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSDictionary *dict=[self.jason objectAtIndex:indexPath.row];
    cell.label.text=[dict objectForKey:@"first_name"];
    cell.label1.text=[dict objectForKey:@"last_name"];
    cell.imageView.image=[UIImage imageNamed:[dict objectForKey:@"profile_pic"]];
    return cell;
    
}
    
    
    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
