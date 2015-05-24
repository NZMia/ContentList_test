//
//  MZ_Details_Model_Frame.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Details_Model_Frame.h"
#import "MZ_Status.h"
#import "MZ_Address.h"
#import "MZ_Company.h"
#import "MZ_Details_Model.h"
#define  MZCellPadding 15
#define MZScreenWidth [UIScreen mainScreen].bounds.size.width
@implementation MZ_Details_Model_Frame

- (void)setDetailInfo:(MZ_Details_Model *)detailInfo
{
    _detailInfo =detailInfo;
    
    CGFloat MZcellWidth = MZScreenWidth - MZCellPadding * 2;
    
    //1. Content
    CGFloat contentX = MZCellPadding;
    CGFloat contentY = MZCellPadding;
    CGFloat contentW = MZcellWidth;
    
    NSDictionary *attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:17]};
    CGSize contentSize = [_detailInfo.content boundingRectWithSize:CGSizeMake(contentW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin |
                          NSStringDrawingTruncatesLastVisibleLine  attributes:attribute context:nil].size;
    
    _contentLabelF =  (CGRect){{contentX, contentY}, contentSize};
    
    
    //2. Title
    CGFloat titleX = MZCellPadding;
    CGFloat titleY = CGRectGetMaxY(_contentLabelF) +5;
    CGFloat titleW = MZcellWidth;
    CGFloat titleH = 44;
    _titleLabelF = CGRectMake(titleX, titleY, titleW, titleH);
    
    
    _cellHeight = CGRectGetMaxY(_titleLabelF);


}
@end
