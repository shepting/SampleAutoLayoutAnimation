//
//  ViewController.m
//  ViewMover
//
//  Created by Steven Hepting on 11/12/15.
//  Copyright © 2015 Hepting. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *grayView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leadingConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *trailingConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;

@end

@implementation ViewController

- (IBAction)moveButtonTapped:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        // Move to right
        self.leadingConstraint.active = false;
        self.trailingConstraint.active = true;

        // Move to bottom
        self.topConstraint.active = false;
        self.bottomConstraint.active = true;

        [self.view setNeedsLayout];
        [self.view layoutIfNeeded];
    }];
}

@end
