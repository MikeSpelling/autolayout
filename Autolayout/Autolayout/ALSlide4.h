//
//  ALSlide4.h
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALSlide4 : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *textField1;
@property (nonatomic, weak) IBOutlet UITextField *textField2;
@property (nonatomic, weak) IBOutlet UIButton *button1;
@property (nonatomic, weak) IBOutlet UIButton *button2;
@property (nonatomic, weak) IBOutlet UILabel *label1;
@property (nonatomic, weak) IBOutlet UILabel *label2;

-(IBAction)textChanged:(UITextField *)textField;
-(IBAction)clear:(id)sender;
-(IBAction)next;

@end
