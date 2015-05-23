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

@interface MZ_Detail_TVC ()

/**
 *  saving all the information data frame model(it is models)
 */
@property (nonatomic, strong) NSMutableArray *statusFrame;

@end

@implementation MZ_Detail_TVC

- (NSMutableArray *)statusFrame
{
    if (!_statusFrame) {
        _statusFrame = [NSMutableArray array];
    }
    return _statusFrame;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
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
    MZ_Details_Model_Frame *data = self.statusFrame[indexPath.row];
    cell.statusFrame = data;

    //cell.statusFrame = self.statusFrame[indexPath.row];
    //NSLog(@"%@",self.statusFrame);
    /** 3. return cell*/
    return cell;
}

- (void)setStatus:(NSMutableArray *)status
{
    _status = status;
    
    NSMutableArray * statusDetail = [NSMutableArray array];
    for (MZ_Status *sta in status) {
        
        MZ_Details_Model_Frame *data = [[MZ_Details_Model_Frame alloc]init];
        data.status = sta;
        [statusDetail addObject:data];
    }
    
    [self.statusFrame addObjectsFromArray:statusDetail];
    [self.tableView reloadData];
}


@end
