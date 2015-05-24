//
//  MZ_Details_Model.h
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 24/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MZ_Status.h"
@interface MZ_Details_Model : NSObject

@property (nonatomic, strong) MZ_Status *userInfo;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;
@end
