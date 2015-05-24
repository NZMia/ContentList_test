//
//  MZ_Details_Model_Frame.h
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class MZ_Details_Model;
@interface MZ_Details_Model_Frame : NSObject

/**
 *  Data source model --- status model
 */
@property (nonatomic, strong) MZ_Details_Model *detailInfo;

// Definition the property to save the all objects' frame

@property (nonatomic, assign,readonly) CGRect titleLabelF;
@property (nonatomic, assign,readonly) CGRect contentLabelF;
/**
 *   cell's height
 */
@property (nonatomic, assign,readonly) CGFloat cellHeight;

@end
