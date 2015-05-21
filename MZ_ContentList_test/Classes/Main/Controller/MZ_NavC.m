//
//  MZ_NavC.m
//  MZ_ContentList_test
//
//  Created by Mia.Zhang on 20/05/15.
//  Copyright (c) 2015 Mia.Zhang. All rights reserved.
//

#import "MZ_NavC.h"
#import "MZ_Contact_NC.h"
#import "MZ_Detail_TVC.h"
#import "MZ_Login_VC.h"

@interface MZ_NavC ()

@end

@implementation MZ_NavC

+ (void)initialize
{
    UIBarButtonItem *barButtonItem = [UIBarButtonItem appearanceWhenContainedIn:self, nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // setting all sub-controller
    [self setUpAllChildrenViewController];
}

#pragma mark - add children view controller to super
- (void) setUpAllChildrenViewController
{
    //Detail View
    MZ_Detail_TVC *DetailVC = [[MZ_Detail_TVC alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:DetailVC];
    [self addChildViewController:nav2];
    //Contact View
    MZ_Contact_NC *contactVC = [[MZ_Contact_NC alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:contactVC];
    [self addChildViewController:nav];
    //login View
    MZ_Login_VC *LoginVC = [[MZ_Login_VC alloc]init];
    [self addChildViewController:LoginVC];
    
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
