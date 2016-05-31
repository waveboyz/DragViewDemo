//
//  TouchView.m
//  AnimationDemo
//
//  Created by 周翔 on 16/5/31.
//  Copyright © 2016年 周翔. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
    }
    
    return self;
}

- (void)layoutIfNeeded
{
    NSLog(@"superview frame width is %f,height is %f",self.superview.frame.size.width,self.superview.frame.size.height);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch=[touches anyObject];
    //NSLog(@"%@",touch);
    
    //取得当前位置
    CGPoint current=[touch locationInView:self.superview];
    //取得前一个位置
    CGPoint previous=[touch previousLocationInView:self.superview];
    
    //移动前的中点位置
    CGPoint center= self.center;
    //移动偏移量
    CGPoint offset=CGPointMake(current.x-previous.x, current.y-previous.y);
    
    //重新设置新位置
    self.center=CGPointMake(center.x+offset.x, center.y+offset.y);
    NSLog(@"moving x is %f,y is %f",self.frame.origin.x,self.frame.origin.y);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGRect previous = self.frame;

    if (previous.origin.x < 0) {
        previous.origin.x = 0;
    }
    
    if (previous.origin.x + self.frame.size.width > self.superview.frame.size.width) {
        previous.origin.x = self.superview.frame.size.width - self.frame.size.width;
    }
    
    if (previous.origin.y < 0) {
        previous.origin.y=0;
    }
    
    if (previous.origin.y + self.frame.size.height > self.superview.frame.size.height) {
        previous.origin.y = self.superview.frame.size.height - self.frame.size.height;
    }
    
    NSLog(@"ending previous x is %f,y is %f",previous.origin.x,previous.origin.y);
    self.frame = previous;
}

@end
