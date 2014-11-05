//
//  ALFirstViewController.h
//  Autolayout
//
//  Created by Michael Spelling on 05/11/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALFirstViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *topTextField;
@property (nonatomic, weak) IBOutlet UITextField *bottomTextField;
@property (nonatomic, weak) IBOutlet UILabel *topLabel;
@property (nonatomic, weak) IBOutlet UILabel *bottomLabel;


@end

