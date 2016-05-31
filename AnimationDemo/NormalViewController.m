//
//  NormalViewController.m
//  AnimationDemo
//
//  Created by 周翔 on 16/5/31.
//  Copyright © 2016年 周翔. All rights reserved.
//

#import "NormalViewController.h"
#import "TouchView.h"

@interface NormalViewController ()
@property (nonatomic, strong) TouchView      *layer;
@property (nonatomic)   CGRect          windowFrame;
@end

@implementation NormalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    _windowFrame = self.view.frame;
    [self createUI];
}

- (void)createUI
{
    
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        static dispatch_once_t predicate;
        dispatch_once(&predicate, ^{
            _layer = [[TouchView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
            _layer.fatherView = self.view;
            _layer.center = self.view.center;
            [self.view addSubview:_layer];
        });
    }
}

@end
