//
//  ALFirstViewController.m
//  Autolayout
//
//  Created by Michael Spelling on 05/11/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import "ALFirstViewController.h"

@implementation ALFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.topTextField) {
        self.topLabel.text = self.topTextField.text;
    } else if (textField == self.bottomTextField) {
        self.bottomLabel.text = self.bottomTextField.text;
    }
}

@end
