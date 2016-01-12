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
@property (nonatomic) BOOL moved;

@end

@implementation ViewController

- (IBAction)moveButtonTapped:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        // Move to right
        self.leadingConstraint.active = self.moved;
        self.trailingConstraint.active = !self.moved;

        // Move to bottom
        self.topConstraint.active = self.moved;
        self.bottomConstraint.active = !self.moved;

        [self.view setNeedsLayout];
        [self.view layoutIfNeeded];
    }];

    self.moved = !self.moved;
}

@end
