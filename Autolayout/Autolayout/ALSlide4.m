//
//  ALSlide4.m
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import "ALSlide4.h"

@interface ALSlide4 ()

@end

@implementation ALSlide4

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.label1.text = @"";
    self.label2.text = @"";
}

-(IBAction)textChanged:(UITextField *)textField
{
    UILabel *label;
    if (textField == self.textField1) {
        label = self.label1;
    } else if (textField == self.textField2) {
        label = self.label2;
    }
    label.text = textField.text;
}

-(IBAction)clear:(id)sender
{
    if (sender == self.button1) {
        self.label1.text = @"";
        self.textField1.text = @"";
    } else if (sender == self.button2) {
        self.label2.text = @"";
        self.textField2.text = @"";
    }
}

-(IBAction)next
{
    [self performSegueWithIdentifier:@"push4" sender:self];
}

@end
