//
//  PageViewController.m
//  twitter-snapchat
//
//  Created by Daníel Björn Sigurbjörnsson on 1/9/15.
//  Copyright (c) 2015 danni. All rights reserved.
//

#import "PageViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface PageViewController () <UIPageViewControllerDataSource>

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataSource=self;
    [self setViewControllers:@[[self.storyboard instantiateViewControllerWithIdentifier:@"firstScene"]] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    [self didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (FirstViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    if ([viewController isKindOfClass:[FirstViewController class]])
        return nil;
    
    return [self.storyboard instantiateViewControllerWithIdentifier:@"firstScene"];
}

- (SecondViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    if ([viewController isKindOfClass:[SecondViewController class]])
        return nil;
    
    return [self.storyboard instantiateViewControllerWithIdentifier:@"secondScene"];
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
