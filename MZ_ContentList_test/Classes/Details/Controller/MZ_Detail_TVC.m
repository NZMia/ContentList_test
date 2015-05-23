//
//  MZ_Detail_TVC.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Detail_TVC.h"
#import "UIView+Frame.h"

@interface MZ_Detail_TVC ()

@end

@implementation MZ_Detail_TVC

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
    
    static NSString *reuseID = @"Detail";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if ( cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseID];
    }
    
    return cell;
}


@end
