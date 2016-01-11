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
        if(self.leadingConstraint.priority == UILayoutPriorityDefaultHigh){
            // Move to right
            self.leadingConstraint.priority = UILayoutPriorityDefaultLow;
            self.trailingConstraint.priority = UILayoutPriorityDefaultHigh;
            
            // Move to bottom
            self.topConstraint.priority = UILayoutPriorityDefaultLow;
            self.bottomConstraint.priority = UILayoutPriorityDefaultHigh;
        }
        else{
            // move back to left
            self.leadingConstraint.priority = UILayoutPriorityDefaultHigh;
            self.trailingConstraint.priority = UILayoutPriorityDefaultLow;
            
            // Move back to top
            self.topConstraint.priority = UILayoutPriorityDefaultHigh;
            self.bottomConstraint.priority = UILayoutPriorityDefaultLow;
        }
        [self.view layoutIfNeeded];
    }];
}

@end
