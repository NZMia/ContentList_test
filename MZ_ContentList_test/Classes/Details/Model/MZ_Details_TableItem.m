//
//  MZ_Details_TableItem.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Details_TableItem.h"

@implementation MZ_Details_TableItem

+ (instancetype)itemWithTitle:(NSString *)title
{
    return [[self alloc] initWithTitle:title];
}

- (instancetype)initWithTitle:(NSString *)title
{
    if (self = [super init]) {
        
        self.title = title;
    }
    return self;
}

@end
