//
//  MZ_Login_VC.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Login_VC.h"
#import "MZ_Contact_NC.h"

@interface MZ_Login_VC ()

- (IBAction)Login:(UIButton *)sender;

@end

@implementation MZ_Login_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"Private Contact"];
   
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (IBAction)Login:(UIButton *)sender {
    
    MZ_Contact_NC *contactV = [[MZ_Contact_NC alloc]init];
    [self.navigationController pushViewController:contactV animated:YES];
}
@end
