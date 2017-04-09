//
//  ViewController.m
//  WebservicWithModel
//
//  Created by A on 03/04/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSMutableArray *jsonobj;
@property(nonatomic,weak)IBOutlet UITableView *tableview;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Getcontact];
    self.tableview.dataSource=self;
    self.tableview.delegate=self;
    
    
}




-(void)Getcontact{
    
    
    NSString *strurl=@"http://gojek-contacts-app.herokuapp.com/contacts.json";
    NSURL *urlstrng=[NSURL URLWithString:strurl];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:urlstrng];
    [request setHTTPBody:@"GET"];
    [request setValue:@"Application/json" forHTTPHeaderField:@"Content-Type"];
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
    cell.label2.text=[dict objectForKey:@"last_name"];
    cell.imageView.image=[UIImage imageNamed:[dict objectForKey:@"profile_pic"]];
    
    
    
    
    return cell;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
