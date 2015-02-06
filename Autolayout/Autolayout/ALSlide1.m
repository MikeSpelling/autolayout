//
//  ALFirstViewController.m
//  Autolayout
//
//  Created by Michael Spelling on 05/11/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import "ALSlide1.h"

@implementation ALSlide1

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.topLabel.text = @"";
    self.bottomLabel.text = @"";
}

-(IBAction)textChanged:(UITextField *)textField
{
    if (textField == self.topTextField) {
        self.topLabel.text = self.topTextField.text;
    } else if (textField == self.bottomTextField) {
        self.bottomLabel.text = self.bottomTextField.text;
    }
    [self.view layoutIfNeeded];
}

-(IBAction)clear:(id)sender
{
    if (sender == self.topButton) {
        self.topLabel.text = @"";
        self.topTextField.text = @"";
    } else if (sender == self.bottomButton) {
        self.bottomLabel.text = @"";
        self.bottomTextField.text = @"";
    }
}

@end
