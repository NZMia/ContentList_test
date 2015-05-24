//
//  MZ_Detail_TVC.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Detail_TVC.h"
#import "UIView+Frame.h"
#import "MZ_Details_Cell.h"
#import "MZ_Details_Model_Frame.h"
#import "MZ_Details_Model.h"

#import "MZ_Status.h"
@interface MZ_Detail_TVC ()

/**
 *  saving all the information data frame model(it is models)
 */

@property (nonatomic, strong) NSMutableArray *infoFrame;
@end

@implementation MZ_Detail_TVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.userInfo.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.infoFrame.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
    static NSString *reuseID = @"Detail";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if ( cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseID];
    }
    
    return cell;
     */

    /** 1. Creating a new cell*/
    MZ_Details_Cell *cell = [MZ_Details_Cell cellWithTableView:tableView];
    /** 2. Setting a data of each cell*/
    cell.statusFrame = self.infoFrame[indexPath.row];

    //cell.statusFrame = self.statusFrame[indexPath.row];
    //NSLog(@"%@",self.statusFrame);
    /** 3. return cell*/
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MZ_Details_Model_Frame *dmf = self.infoFrame[indexPath.row];
    return  dmf.cellHeight;
}

- (void)setUserInfo:(MZ_Status *)userInfo{
    _userInfo = userInfo;
    [self detailModelWithTitle:@"USERNAME" andContent:userInfo.name];
    [self detailModelWithTitle:@"PHONE" andContent:userInfo.phone];
    [self detailModelWithTitle:@"ADDRESS" andContent:[NSString stringWithFormat:@"%@,%@,%@,%@",userInfo.address.suite, userInfo.address.street, userInfo.address.city, userInfo.address.zipcode]];
    [self detailModelWithTitle:@"WEBSITE" andContent:userInfo.website];
    [self detailModelWithTitle:@"COMPANY" andContent:[NSString stringWithFormat:@"%@,%@,%@",userInfo.company.name, userInfo.company.catachPhrase, userInfo.company.bs]];
    
    
}
- (void)detailModelWithTitle:(NSString *)title andContent:(NSString *)content{
    MZ_Details_Model *model = [[MZ_Details_Model alloc] init];
    model.title = title;
    model.content = content;
    
    MZ_Details_Model_Frame *dmf = [[MZ_Details_Model_Frame alloc] init];
    dmf.detailInfo = model;
    
    [self.infoFrame addObject:dmf];
    
}


- (NSMutableArray *)infoFrame
{
    if (!_infoFrame) {
        _infoFrame = [NSMutableArray array];
    }
    return _infoFrame;

}

@end
