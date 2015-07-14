//
//  SherrifViewController.m
//  Mafia
//
//  Created by Jeff Huang on 2015-07-13.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "SherrifViewController.h"

@interface SherrifViewController ()

@end

@implementation SherrifViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnHome:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
