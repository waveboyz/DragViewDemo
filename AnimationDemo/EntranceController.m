//
//  EntranceController.m
//  AnimationDemo
//
//  Created by 周翔 on 16/5/31.
//  Copyright © 2016年 周翔. All rights reserved.
//

#import "EntranceController.h"
#import "NormalViewController.h"
#import "ViewController.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface EntranceController ()
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;

@end

@implementation EntranceController

- (IBAction)button1Pressed:(id)sender
{
    NormalViewController *vc = [[NormalViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)button2Pressed:(id)sender
{
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
