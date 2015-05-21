//
//  MZ_Login_VC.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_Login_VC.h"
#import "MZ_Contact_NC.h"
#import "MBProgressHUD.h"
#import "MBProgressHUD+MJ.h"
@interface MZ_Login_VC ()
@property (weak, nonatomic) IBOutlet UITextField *Account;

@property (weak, nonatomic) IBOutlet UITextField *Passward;

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
    
    [MBProgressHUD showMessage:@"Loging"];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUD];
        
        if ([_Account.text isEqualToString:@"mia"] && [_Passward.text isEqualToString:@"mia"]) {
            
            MZ_Contact_NC *contactV = [[MZ_Contact_NC alloc]init];
            [self.navigationController pushViewController:contactV animated:YES];
        }else{
            [MBProgressHUD showError:@"Wrong..."];
        }
    });
    
}
@end
