//
//  TablebleViewController.h
//  DelegateTableview
//
//  Created by A on 20/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol datarecieving<NSObject>
-(void) recievingdata:(NSString *)data;




@end


@interface TablebleViewController : UIViewController
@property(nonatomic,assign)id<datarecieving>delegate;

@end
