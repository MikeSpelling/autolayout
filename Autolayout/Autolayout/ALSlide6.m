//
//  ALSlide6.m
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import "ALSlide6.h"
#import "UIView+ALAutoLayout.h"

@interface ALSlide6()
@property (nonatomic, assign) NSInteger startingRight;
@property (nonatomic, assign) NSInteger startingTop;
@property (nonatomic, assign) NSInteger startingWidth;
@property (nonatomic, assign) NSInteger startingHeight;
@end


@implementation ALSlide6

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.startingRight = self.rightConstraint.constant;
    self.startingTop = self.topConstraint.constant;
    self.startingWidth = self.widthConstraint.constant;
    self.startingHeight = self.heightConstraint.constant;
}

-(IBAction)moveLabel
{
    [self.label removeConstraints:self.label.constraints];
    [self.label removeFromSuperview];
    [self.parentView al_addExpandingSubview:self.label];
}

-(IBAction)rightChanged:(UISlider*)slider
{
    self.rightConstraint.constant = self.startingRight + (slider.value*(self.view.bounds.size.width-self.startingRight-self.widthConstraint.constant));
    [self.view layoutIfNeeded];
}

-(IBAction)topChanged:(UISlider*)slider
{
    self.topConstraint.constant = self.startingTop + (slider.value*(self.view.bounds.size.height-self.startingTop));
    [self.view layoutIfNeeded];
}

-(IBAction)widthChanged:(UISlider*)slider
{
    self.widthConstraint.constant = self.startingWidth + (slider.value*(self.view.bounds.size.width-self.startingWidth));
    [self.view layoutIfNeeded];
}

-(IBAction)heightChanged:(UISlider*)slider
{
    self.heightConstraint.constant = self.startingHeight + (slider.value*(self.view.bounds.size.height-self.startingHeight));
    [self.view layoutIfNeeded];
}

@end
