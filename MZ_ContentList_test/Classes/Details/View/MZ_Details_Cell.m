//
//  MZ_Details_Cell.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Details_Cell.h"
#import "MZ_Status.h"
#import "MZ_Details_Model_Frame.h"
#import "MZ_Address.h"
#import "MZ_Company.h"
#import "UIView+Frame.h"
@interface MZ_Details_Cell()

@property (nonatomic, weak) UILabel *usernameLabel;
@property (nonatomic ,weak) UILabel *phoneLabel;
@property (nonatomic ,weak) UILabel *addressLabel;
@property (nonatomic ,weak) UILabel *webisteLabel;
@property (nonatomic ,weak) UILabel *companyLabel;
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
    // 1.USERNAME---UILabel
    UILabel *username = [[UILabel alloc]init];;
    [self.contentView addSubview:username];

    // 2.PHONE --- UILable
    UILabel *phone = [[UILabel alloc]init];;
    [self.contentView addSubview:phone];
    
    // 3. ADDRESS --- UILable
    UILabel *address = [[UILabel alloc]init];;
    [self.contentView addSubview:address];
    
    // 4. WEBSITE --- UILable
    UILabel *webiste = [[UILabel alloc]init];;
    [self.contentView addSubview:webiste];
    
    // 5. COMPANY --- UILable
    UILabel *company = [[UILabel alloc]init];
    [self.contentView addSubview:company];
}

#pragma mark - Setting data

- (void)setStatusFrame:(MZ_Details_Model_Frame *)statusFrame
{
    _statusFrame =statusFrame;
    //1. setting Data
    [self setUpData];
    //2. setting Frame
    [self setUpFrame];
}
/**
 *  Setting Data
 */
- (void)setUpData
{
//1. Take out Data model
    MZ_Status *status = self.statusFrame.status;
    MZ_Address *address = status.address;
    MZ_Company *company = status.company;

//2. Take out
    /**USERNAME */
    self.usernameLabel.text = status.username;
    
    /**PHONE */
    self.phoneLabel.text = status.phone;
    
    /**ADDRESS */
    //Joining the 'NSString' of address for a complete address
    NSString *completeAddress = [NSString stringWithFormat:@"%@,%@,%@,%@",address.suite,address.street,address.city,address.zipcode];
    self.addressLabel.text = completeAddress;
    
    /**WESITE */
    self.webisteLabel.text = status.website;
    
    /**COMPANY */
    //Joint the 'NSString' of company for a complete company name
    NSString *completeCompany = [NSString stringWithFormat:@"%@,%@,%@",company.name,company.catachPhrase,company.bs];
    self.companyLabel.text = completeCompany;
    
}
/**
 *  setting Frame
 */
- (void)setUpFrame
{
    /**USERNAME */
    self.usernameLabel.frame = self.statusFrame.usernameLabelF;
    
    /**PHONE */
    self.phoneLabel.frame = self.statusFrame.phoneLabelF;
    
    /**ADDRESS */
    //[self.addressLabel setNumberOfLines:0];
    self.addressLabel.frame = self.statusFrame.addressLabelF;
    
    /**WESITE */
    self.webisteLabel.frame = self.statusFrame.webisteLabelF;
    
    /**COMPANY */
    self.companyLabel.frame = self.statusFrame.companyLabelF;
}
@end
