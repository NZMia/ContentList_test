//
//  MZ_Details_TableItem.h
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZ_Details_TableItem : NSObject

@property(nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *subTitle;

+(instancetype)itemWithTitle:(NSString *)title;
-(instancetype)initWithTitle:(NSString *)title;
@end
