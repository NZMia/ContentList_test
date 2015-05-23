//
//  MZ_Details_Cell.h
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MZ_Details_Model_Frame;
@interface MZ_Details_Cell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView*)tableView;

@property (nonatomic,strong) MZ_Details_Model_Frame *statusFrame;
@end
