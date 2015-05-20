//
//  MZ_Contact_NC.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Contact_NC.h"
#import "AFNetworking.h"

@interface MZ_Contact_NC ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *status;
@end

@implementation MZ_Contact_NC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self setNav];
    [self loadStatus];
}

- (void)setNav
{
    self.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.rightBarButtonItem = nil;
    [self.navigationItem setTitle:@"Contacts"];
}

- (void)loadStatus
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *url = @"http://jsonplaceholder.typicode.com/users";
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"successful = %@",responseObject);
//        self.status = responseObject[@"status"];
//        [self.tableView reloadData];
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
    
    NSDictionary *statusDict = self.status[indexPath.row];
    NSDictionary *idDict = statusDict[@"id"];
    
    cell.textLabel.text = idDict[@"name"];
    cell.detailTextLabel.text = idDict[@"email"];
    return  cell;
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
