//
//  ViewController.h
//  Map
//
//  Created by A on 31/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet MKMapView *map;
@property(nonatomic,weak)IBOutlet UISegmentedControl *segment;
-(IBAction)setMap:(MKMapView *)sender;


@end

