//
//  PageViewController.m
//  twitter-snapchat
//
//  Created by Daníel Björn Sigurbjörnsson on 1/9/15.
//  Copyright (c) 2015 danni. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController () <UIPageViewControllerDataSource>

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"sæll vertu sjomli");
    // Do any additional setup after loading the view.
    self.dataSource=self;
    
    if(_FirstViewController == nil){
        _FirstViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"firstScene"];
    }
    if(_SecondViewController == nil){
        _SecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondScene"];
    }
    
    
    [self setViewControllers:@[_FirstViewController] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    [self didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (FirstViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSLog(@"firstviewcontroller is loading?");
    if ([viewController isKindOfClass:[FirstViewController class]])
        return nil;
    
    return _FirstViewController;
}

- (SecondViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSLog(@"Second is loading?");
    if ([viewController isKindOfClass:[SecondViewController class]])
        return nil;
    
    return _SecondViewController;
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
