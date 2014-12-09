//
//  ALSlide5.m
//  Autolayout
//
//  Created by Michael Spelling on 09/12/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

#import "ALSlide5.h"
#import "ALCollectionViewCell.h"

NSString* const ALSlide5Cell = @"ALCollectionViewCell";
NSInteger const ALSlide5NumItems = 30;


@interface ALSlide5()
@property (nonatomic, strong) ALCollectionViewCell *prototypeCell;
@end


@implementation ALSlide5

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UINib *cellNib = [UINib nibWithNibName:ALSlide5Cell bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:ALSlide5Cell];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self handleRotation];
}


#pragma mark - Actions

-(IBAction)next
{
//    [self performSegueWithIdentifier:@"push5" sender:self];
}


#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return ALSlide5NumItems;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ALCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ALSlide5Cell forIndexPath:indexPath];
    [self configureCell:cell forIndexPath:indexPath];
    
    return cell;
}


#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (!self.prototypeCell) {
        NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:ALSlide5Cell owner:self options:nil];
        self.prototypeCell = nibViews[0];
    }
    
    [self configureCell:self.prototypeCell forIndexPath:indexPath];
    [self.prototypeCell layoutIfNeeded];
    
    return [self.prototypeCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
}


#pragma mark - Internal

-(void)configureCell:(ALCollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath
{
    cell.title.text = [self titleForIndex:indexPath.item];
    
    CGFloat pos = (CGFloat)indexPath.item/(CGFloat)ALSlide5NumItems;
    cell.title.textColor = [UIColor colorWithRed:1-pos green:1-pos blue:1-pos alpha:1];
    cell.backgroundColor = [UIColor colorWithRed:pos green:pos blue:pos alpha:1];
    
    cell.widthConstraint.active = UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation);
    cell.heightConstraint.active = !cell.widthConstraint.active;
}

-(NSString*)titleForIndex:(NSInteger)index
{
    NSMutableString *string = [NSMutableString new];
    for (int i=0; i<=index; i++) {
        string = [[string stringByAppendingString:[NSString stringWithFormat:@"%ld", (long)index+1]] mutableCopy];
    }
    return string;
}


#pragma mark - Rotation

-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    [self willRotate];
    
    __weak typeof(self) weakSelf = self;
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        [weakSelf handleRotation];
        
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        [weakSelf didRotate];
    }];
}

-(void)willRotate
{
    
}

-(void)handleRotation
{
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    
    if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation)) {
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    } else {
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    }
    
    self.collectionView.collectionViewLayout = flowLayout;
    [self.collectionView reloadData];
}

-(void)didRotate
{
    
}

@end
