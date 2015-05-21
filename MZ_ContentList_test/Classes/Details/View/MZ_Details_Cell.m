//
//  MZ_Details_Cell.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 22/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Details_Cell.h"
#import "MZ_Details_TableItem.h"

@interface MZ_Details_Cell()

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

- (void)setItem:(MZ_Details_TableItem *)item
{
    _item =item;
    
    self.textLabel.text = item.title;
    self.detailTextLabel.text = _item.subTitle;
}
@end
