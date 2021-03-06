//
//  ALSlide2.m
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import "ALSlide2.h"

@implementation ALSlide2

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.label1.text = @"";
    self.label2.text = @"";
    self.label3.text = @"";
    self.otherLabel1.text = @"";
    self.otherLabel2.text = @"";
    self.otherLabel3.text = @"";
}

-(IBAction)textChanged:(UITextField *)textField
{
    UILabel *label;
    UILabel *otherLabel;
    if (textField == self.textField1) {
        label = self.label1;
        otherLabel = self.otherLabel1;
    } else if (textField == self.textField2) {
        label = self.label2;
        otherLabel = self.otherLabel2;
    } else if (textField == self.textField3) {
        label = self.label3;
        otherLabel = self.otherLabel3;
    }
    label.text = textField.text;
    otherLabel.text = textField.text;
}

-(IBAction)clear:(id)sender
{
    if (sender == self.button1) {
        self.label1.text = @"";
        self.otherLabel1.text = @"";
        self.textField1.text = @"";
    } else if (sender == self.button2) {
        self.label2.text = @"";
        self.otherLabel2.text = @"";
        self.textField2.text = @"";
    } else if (sender == self.button3) {
        self.label3.text = @"";
        self.otherLabel3.text = @"";
        self.textField3.text = @"";
    }
}

@end
