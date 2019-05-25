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
    
    UIViewController *leftViewController = [UIViewController new];
    leftViewController.view.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height/2.0);
    leftViewController.view.backgroundColor = [UIColor redColor];
    
    UIViewController *rightViewController = [UIViewController new];
    rightViewController.view.frame = CGRectMake(0, UIScreen.mainScreen.bounds.size.height/2.0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height/2.0);
    rightViewController.view.backgroundColor = [UIColor greenColor];

    [self addChildViewController:leftViewController];
    [self addChildViewController:rightViewController];
    
    [self.view addSubview:leftViewController.view];
    [self.view  addSubview:rightViewController.view];
    
    [leftViewController didMoveToParentViewController:self];
    [rightViewController didMoveToParentViewController:self];
    
//    self.view.backgroundColor = [UIColor blueColor];
    
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
