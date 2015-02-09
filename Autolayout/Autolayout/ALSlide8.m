//
//  ALSlide8.m
//  Autolayout
//
//  Created by Michael Spelling on 06/02/2015.
//  Copyright (c) 2015 Michael Atkins-Spelling. All rights reserved.
//

#import "ALSlide8.h"

@interface ALSlide8 ()
@property (nonatomic, assign) BOOL expandViews;
@end

@implementation ALSlide8

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self adjustGreenView];
    [self adjustPurpleView];
    [self.view layoutIfNeeded];
    
    [self toggleAnimation];
}

-(void)toggleAnimation
{
    self.expandViews = !self.expandViews;
    
    [self adjustGreenView];
    [self adjustPurpleView];
    
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:2 animations:^{
        [weakSelf.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        [weakSelf toggleAnimation];
    }];
}

-(void)adjustGreenView
{
    NSInteger adjustment = self.expandViews ? 200 : 100;
    self.greenheight.constant = adjustment;
    self.greenWidth.constant = adjustment;
}

-(void)adjustPurpleView
{
    NSInteger adjustment = self.expandViews ? 300 : 50;
    self.purpleTop.constant = adjustment;
}

@end
