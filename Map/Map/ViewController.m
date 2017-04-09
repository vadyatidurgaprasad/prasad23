//
//  ViewController.m
//  Map
//
//  Created by A on 31/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)setMap:(MKMapView *)sender{
    if (self.segment.selectedSegmentIndex==0) {
        self.map.mapType=MKMapTypeStandard;
    }else if (self.segment.selectedSegmentIndex == 1) {
        self.map.mapType = MKMapTypeHybrid;
    }else
{
    self.map.mapType = MKMapTypeSatellite;
    
}
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
