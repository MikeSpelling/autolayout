//
//  UIView+ALAutoLayout.m
//  BBCiPlayerRadio
//
//  Created by Michael Spelling on 02/07/2014.
//  Copyright (c) 2014 BBC. All rights reserved.
//

#import "UIView+ALAutoLayout.h"

@implementation UIView (ALAutoLayout)

-(void)al_addExpandingSubview:(UIView *)subview
{
    if (subview.superview) {
        [subview removeFromSuperview];
    }
    
    [self addSubview:subview];
    subview.translatesAutoresizingMaskIntoConstraints = NO;
    NSDictionary *views = NSDictionaryOfVariableBindings(subview);
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[subview]|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[subview]|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:views]];
}

@end
