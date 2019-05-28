//
//  SecondViewController.m
//  TestViewController
//
//  Created by Алексей on 25/05/2019.
//  Copyright © 2019 Alexey. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIViewController *leftViewController = [UIViewController new];
    leftViewController.view.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width/2.0, UIScreen.mainScreen.bounds.size.height);
    leftViewController.view.backgroundColor = [UIColor orangeColor];
    leftViewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight |
    UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    UIViewController *rightViewController = [UIViewController new];
    rightViewController.view.frame = CGRectMake(UIScreen.mainScreen.bounds.size.width/2.0, 0, UIScreen.mainScreen.bounds.size.width/2.0, UIScreen.mainScreen.bounds.size.height);
    rightViewController.view.backgroundColor = [UIColor blueColor];
    rightViewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight |
    UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

    
    [self addChildViewController:leftViewController];
    [self addChildViewController:rightViewController];
    
    [self.view addSubview:leftViewController.view];
    [self.view addSubview:rightViewController.view];
    
    [leftViewController didMoveToParentViewController:self];
    [rightViewController didMoveToParentViewController:self];
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
