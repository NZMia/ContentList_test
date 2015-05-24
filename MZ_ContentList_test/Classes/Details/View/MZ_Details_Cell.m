//
//  MZ_Details_Cell.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Details_Cell.h"

#import "MZ_Details_Model_Frame.h"

#import "UIView+Frame.h"
#import "MZ_Details_Model.h"
@interface MZ_Details_Cell()

@property (nonatomic, weak) UILabel *title;
@property (nonatomic ,weak) UILabel *content;

@end
@implementation MZ_Details_Cell

 + (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *reuseID = @"Item";
    
    MZ_Details_Cell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (cell == nil) {
        
        cell = [[MZ_Details_Cell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseID];
    }
    return cell;
}

#pragma  mark - Setting the objects
- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
// Add all objects
        
        [self setUpDetailView];
    }
    return self;
}
/**
 *  add all objects
 */
- (void)setUpDetailView
{
    //    [self layoutIfNeeded];
    // 1.Title---UILabel
    UILabel *title = [[UILabel alloc]init];
    //title.backgroundColor = [UIColor orangeColor];
    title.textColor = [UIColor lightGrayColor];
    self.title = title;
    [self addSubview:title];
    
    // 2.Content --- UILable
    UILabel *content = [[UILabel alloc]init];
    //content.backgroundColor = [UIColor lightGrayColor];
    content.font = [UIFont systemFontOfSize:17];
    
    content.numberOfLines = 0;
    self.content = content;
    [self addSubview:content];
    
    
}

#pragma mark - Setting data

- (void)setStatusFrame:(MZ_Details_Model_Frame *)statusFrame
{
    _statusFrame = statusFrame;
    //1. setting Data
    [self setUpData];
    //2. setting Frame
    [self setUpFrame];
    [self layoutIfNeeded];
}
/**
 *  Setting Data
 */
- (void)setUpData
{
    //1. Take out Data model
    MZ_Details_Model *status = self.statusFrame.detailInfo;
    
    
    //2. Take out
    /**USERNAME */
    self.title.text = status.title;
    
    /**PHONE */
    self.content.text = status.content;
    
    
    
}


- (void)setUpFrame
{
    self.title.frame = self.statusFrame.titleLabelF;
    self.content.frame = self.statusFrame.contentLabelF;
    
}
@end
