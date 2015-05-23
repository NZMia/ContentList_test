//
//  MZ_Contact_NC.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Contact_NC.h"
#import "AFNetworking.h"
#import "MZ_Status.h"
#import "MJExtension.h"
#import "MZ_Detail_TVC.h"
#import "UIView+Frame.h"
#import "MZ_Details_Model_Frame.h"

@interface MZ_Contact_NC ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *status;
@end

@implementation MZ_Contact_NC

- (NSMutableArray *)status
{
    if (_status == nil) {
        _status = [NSMutableArray array];
    }
    return _status;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self setNav];
    [self loadStatus];
}

- (void)setNav
{
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithTitle:nil style:nil target:nil action:nil];
    self.navigationItem.leftBarButtonItem = left;
    [self.navigationItem setTitle:@"Contacts"];
}

- (void)loadStatus
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *url = @"http://jsonplaceholder.typicode.com/users";
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
       // NSArray *dicArray = responseObject[@"Status"];
        NSMutableArray *arraySaving = [NSMutableArray array];
        for (NSDictionary *dict in responseObject) {
            MZ_Status *status = [MZ_Status objectWithKeyValues:dict];
            [arraySaving addObject:status];
        }
        self.status = arraySaving;
        [self.tableView reloadData];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error = %@",error);
    }];
   
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  self.status.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reuseCell = @"ID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseCell];
    }
    
    MZ_Status *status =self.status[indexPath.row];
    cell.textLabel.text = status.name;
    cell.detailTextLabel.text = status.email;
    
// To show Details
    UILabel *label = [[UILabel alloc]init];
    label.text = @"Details";
    label.font = [UIFont systemFontOfSize:10];
    label.size = [label.text sizeWithFont:label.font];
    cell.accessoryView = label;
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MZ_Detail_TVC *detailInfo = [[MZ_Detail_TVC alloc]init];
    detailInfo.status = self.status;
    [self.navigationController pushViewController:detailInfo animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
