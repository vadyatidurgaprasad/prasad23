//
//  ViewController.m
//  WebservicePractice
//
//  Created by A on 28/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)NSMutableArray *jason;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getcontactlist];
    
}




-(void)getcontactlist{
    NSString *strurl=@"http://data.in.bookmyshow.com/getData.aspx?cc=&cmd=GETEVENTLIST&dt=&et=MT&f=json&lg=72.842588&lt=19.114186&rc=MUMBAI&sr=&t=a54a7b3aba576256614a";
    NSURL *urlstr=[NSURL URLWithString:strurl];
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:urlstr];
    [request setHTTPMethod:@"GET"];
    [request setValue:@"Application/jason" forHTTPHeaderField:@"content-type"];
    NSURLSession *session=[NSURLSession sharedSession];
    NSURLSessionDataTask *datatask=[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSError *err;
        NSLog(@"block");
        self.jason=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        NSLog(@"%",self.jason);
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
