//
//  ALSlide3.m
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import "ALSlide3.h"

@implementation ALSlide3

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(IBAction)next
{
    [self performSegueWithIdentifier:@"push3" sender:self];
}

@end
