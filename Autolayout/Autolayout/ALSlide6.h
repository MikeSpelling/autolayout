//
//  ALSlide6.h
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALSlide6 : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *label;
@property (nonatomic, weak) IBOutlet UIView *parentView;

@property (nonatomic, strong) IBOutlet NSLayoutConstraint *rightConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *topConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *widthConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *heightConstraint;

-(IBAction)moveLabel;
-(IBAction)rightChanged:(UISlider*)slider;
-(IBAction)topChanged:(UISlider*)slider;
-(IBAction)widthChanged:(UISlider*)slider;
-(IBAction)heightChanged:(UISlider*)slider;

@end
