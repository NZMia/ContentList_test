//
//  MZ_Status.h
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 21/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MZ_Address.h"
#import "MZ_Company.h"

@interface MZ_Status : NSObject

@property (nonatomic, assign) int ID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, strong) MZ_Address *address;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *website;
@property (nonatomic, strong) MZ_Company *company;

@end
