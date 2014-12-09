//
//  ALSlide2.h
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALSlide2 : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *textField1;
@property (nonatomic, weak) IBOutlet UITextField *textField2;
@property (nonatomic, weak) IBOutlet UITextField *textField3;
@property (nonatomic, weak) IBOutlet UIButton *button1;
@property (nonatomic, weak) IBOutlet UIButton *button2;
@property (nonatomic, weak) IBOutlet UIButton *button3;
@property (nonatomic, weak) IBOutlet UILabel *label1;
@property (nonatomic, weak) IBOutlet UILabel *label2;
@property (nonatomic, weak) IBOutlet UILabel *label3;
@property (nonatomic, weak) IBOutlet UILabel *compressionResistanceLabel1;
@property (nonatomic, weak) IBOutlet UILabel *compressionResistanceLabel2;
@property (nonatomic, weak) IBOutlet UILabel *compressionResistanceLabel3;

-(IBAction)textChanged:(UITextField *)textField;
-(IBAction)clear:(id)sender;

@end
