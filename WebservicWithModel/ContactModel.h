//
//  ContactModel.h
//  WebservicWithModel
//
//  Created by A on 03/04/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactModel : NSObject
@property(nonatomic,strong)NSMutableString *firstname;
@property(nonatomic,strong)NSMutableString *lastname;
@property(nonatomic,strong)NSMutableString *image;
@property(nonatomic,strong)NSMutableString *ids;

@end
