//
//  MZ_Detail_TVC.h
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZ_Contact_NC.h"
#import "MZ_Status.h"

@class MZ_Detail_TVC, MZ_Status;
@interface MZ_Detail_TVC : UITableViewController

@property (nonatomic, strong) MZ_Status *status;
@end
