//
//  ViewController.m
//  WebserviecesTask
//
//  Created by A on 20/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)NSArray *jasonobj;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getContactList];
    
    
    
    
    
    
    
}
-(void) getContactList{
    NSString *strUrl =@"http://data.in.bookmyshow.com/getData.aspx?cc=&cmd=GETEVENTLIST&dt=&et=MT&f=json&lg=72.842588&lt=19.114186&rc=MUMBAI&sr=&t=a54a7b3aba576256614a";
    NSURL *url=[NSURL URLWithString:strUrl];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
    [request setHTTPBody:@"GET"];
    [request setValue:@"Application/jsaon" forHTTPHeaderField:@"Content-Type"];
    NSURLSession *session=[NSURLSession sharedSession];
    
    NSURLSessionDataTask *datatask=[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSError *err;
        
        NSLog(@"black");
        
        self.jasonobj =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        NSLog(@"%@",self.jasonobj);
        
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
