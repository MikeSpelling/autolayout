//
//  ALCollectionViewCell.h
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *title;

// Must be strong - otherwise will get nilled when deactivated
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *widthConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *heightConstraint;

@end
