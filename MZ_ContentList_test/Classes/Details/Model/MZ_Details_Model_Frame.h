//
//  MZ_Details_Model_Frame.h
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class MZ_Status;
@interface MZ_Details_Model_Frame : NSObject

/**
 *  Data source model --- status model
 */
@property (nonatomic, strong) MZ_Status *status;

// Definition the property to save the all objects' frame

/**username*/
@property (nonatomic, assign,readonly) CGRect usernameLabelF;
/**phone*/
@property (nonatomic, assign,readonly) CGRect phoneLabelF;
/**address*/
@property (nonatomic, assign,readonly) CGRect addressLabelF;
/**website*/
@property (nonatomic, assign,readonly) CGRect webisteLabelF;
/**company*/
@property (nonatomic, assign,readonly) CGRect companyLabelF;
/**
 *   cell's height
 */
@property (nonatomic, assign,readonly) CGRect *cellHeight;

@end
