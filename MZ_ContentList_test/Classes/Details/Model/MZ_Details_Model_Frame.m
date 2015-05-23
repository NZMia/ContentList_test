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

#define  MZCellPadding 10
#define MZScreenWidth [UIScreen mainScreen].bounds.size.width
@implementation MZ_Details_Model_Frame

- (void)setStatus:(MZ_Status *)status
{
    _status = status;
    MZ_Address *address = _status.address;
    MZ_Company *company = _status.company;
//1. USERNAME
    CGFloat usernameX = MZCellPadding;
    CGFloat usernameY = MZCellPadding;
    CGFloat usernameW = MZScreenWidth;
    CGFloat usernameH = 44;
    _usernameLabelF = CGRectMake(usernameX, usernameY, usernameW, usernameH);
    
//2. PHONE
    CGFloat phoneX = MZCellPadding;
    CGFloat phoneY = CGRectGetMaxY(_usernameLabelF) + 5;
    CGFloat phoneW = MZScreenWidth;
    CGFloat phoneH = 44;
    _phoneLabelF = CGRectMake(phoneX, phoneY, phoneW, phoneH);
    
//3. ADDRESS
    CGFloat addressX = MZCellPadding;
    CGFloat addressY =CGRectGetMaxY(_phoneLabelF) +5;
    CGFloat addressW = MZScreenWidth;
    //constraint
    CGSize addressContentMaxSize = CGSizeMake(addressW - MZCellPadding - MZCellPadding, MAXFLOAT);
    NSString *completeAddress = [NSString stringWithFormat:@"%@,%@,%@,%@",address.suite,address.street,address.city,address.zipcode];
    CGSize addressSize = [completeAddress sizeWithFont:[UIFont systemFontOfSize:12] constrainedToSize:addressContentMaxSize];
    _addressLabelF =  (CGRect){{addressX, addressY}, addressSize};
    
//4. WEBSITE
    CGFloat webisteX = MZCellPadding;
    CGFloat webisteY = CGRectGetMaxY(_addressLabelF) +5;
    CGFloat webisteW = MZScreenWidth;
    CGFloat webisteH = 44;
    _webisteLabelF = CGRectMake(webisteX, webisteY, webisteW, webisteH);
    
//5. COMPANY
    CGFloat companyX = MZCellPadding;
    CGFloat companyY = CGRectGetMaxY(_webisteLabelF) +5;
    CGFloat companyW = MZScreenWidth;
    CGSize companyContentMaxSize = CGSizeMake(companyW - MZCellPadding - MZCellPadding, MAXFLOAT);
    NSString *completeCompany = [NSString stringWithFormat:@"%@,%@,%@",company.name,company.catachPhrase,company.bs];
    CGSize companySize = [completeCompany sizeWithFont:[UIFont systemFontOfSize:12] constrainedToSize:companyContentMaxSize];
    _companyLabelF =(CGRect){{companyX , companyY }, companySize};

//6. CELL
    _cellHeight = CGRectGetMaxY(_companyLabelF);
}
@end
