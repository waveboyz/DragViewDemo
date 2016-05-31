//
//  ViewController.m
//  AnimationDemo
//
//  Created by 周翔 on 16/5/30.
//  Copyright © 2016年 周翔. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"

@interface ViewController ()
@property (nonatomic, strong) TouchView      *layer;
@property (nonatomic)   CGRect          windowFrame;
@end

@implementation ViewController

- (void)viewDidLoad
{
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

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"touching began!");
//}



@end
