//
//  FirstViewController.m
//  TestViewController
//
//  Created by Алексей on 25/05/2019.
//  Copyright © 2019 Alexey. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIViewController *topViewController = [UIViewController new];
    topViewController.view.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height/2.0);
    topViewController.view.backgroundColor = [UIColor redColor];
//    topViewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight |
//    UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

    UIViewController *bottomViewController = [UIViewController new];
    bottomViewController.view.frame = CGRectMake(0, UIScreen.mainScreen.bounds.size.height/2.0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height/2.0);
    bottomViewController.view.backgroundColor = [UIColor greenColor];
//    bottomViewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight |
//    UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

    [self addChildViewController:topViewController];
    [self addChildViewController:bottomViewController];
    
    [self.view addSubview:topViewController.view];
    [self.view  addSubview:bottomViewController.view];
    
    [topViewController didMoveToParentViewController:self];
    [bottomViewController didMoveToParentViewController:self];
    
    topViewController.view.translatesAutoresizingMaskIntoConstraints = NO;
    bottomViewController.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:topViewController.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:topViewController.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:topViewController.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:topViewController.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0]
                                ]];
    
    [self.view addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:bottomViewController.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:bottomViewController.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:bottomViewController.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:bottomViewController.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0]
                                ]];
    
        
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
