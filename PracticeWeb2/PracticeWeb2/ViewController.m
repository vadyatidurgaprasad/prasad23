//
//  ViewController.m
//  PracticeWeb2
//
//  Created by A on 29/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)NSMutableArray *jsonobj;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getdata];
    
}
-(void)getdata{
    NSString *strurl=@"http://gojek-contacts-app.herokuapp.com/contacts.json";
    NSURL *url=[NSURL URLWithString:strurl];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"GET"];
    NSURLSession *session=[NSURLSession sharedSession];
    NSURLSessionDataTask *datatask=[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSError *err;
        NSLog(@"block");
        self.jsonobj=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        NSLog(@"%@",self.jsonobj);
        dispatch_async(dispatch_get_main_queue(), ^{
            
        });
    }];
    [datatask resume];
    
                
}
  

    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
