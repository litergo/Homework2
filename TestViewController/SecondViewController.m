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
    
//    self.view.backgroundColor = [UIColor blackColor];
    
    
    UIViewController *topViewController = [UIViewController new];
    topViewController.view.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width/2.0, UIScreen.mainScreen.bounds.size.height);
    topViewController.view.backgroundColor = [UIColor blackColor];
    
    UIViewController *bottomViewController = [UIViewController new];
    bottomViewController.view.frame = CGRectMake(UIScreen.mainScreen.bounds.size.width/2.0, 0, UIScreen.mainScreen.bounds.size.width/2.0, UIScreen.mainScreen.bounds.size.height);
    bottomViewController.view.backgroundColor = [UIColor blueColor];
    
    [self addChildViewController:topViewController];
    [self addChildViewController:bottomViewController];
    
    [self.view addSubview:topViewController.view];
    [self.view addSubview:bottomViewController.view];
    
    [topViewController didMoveToParentViewController:self];
    [bottomViewController didMoveToParentViewController:self];
    
    
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
