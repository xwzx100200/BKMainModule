//
//  BKTabBarVC.m
//  Pods
//
//  Created by i2p on 2021/6/14.
//

#import "BKTabBarVC.h"
#import "BKNavigationController.h"
#import "BKHomeVC.h"
#import "BKMeVC.h"
#import <BKResource/UIImage+BKSourceImage.h>

@implementation BKTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.hidden = NO;
    [self initTabBarItems];
}

-(void)initTabBarItems{

    BKHomeVC *homeVC = [[BKHomeVC alloc] init];
    BKNavigationController *homeNV= [[BKNavigationController alloc] initWithRootViewController:homeVC];
    
    
    BKMeVC *accountVC = [[BKMeVC alloc] init];
    BKNavigationController *accountNV= [[BKNavigationController alloc] initWithRootViewController:accountVC];

    NSMutableArray *controllers = [NSMutableArray arrayWithCapacity:2];
    [controllers addObject:homeNV];
    [controllers addObject:accountNV];
    
    self.tabBar.tintColor = [UIColor systemBlueColor];
    self.viewControllers = controllers;
    self.selectedIndex = 0;
    
    UITabBarItem *tabBarItem0 = [self.tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem1 = [self.tabBar.items objectAtIndex:1];
    
    tabBarItem0.title = @"首页";
    tabBarItem1.title = @"我的";

    tabBarItem0.image = [[UIImage sourceImageNamed:@"tab_home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem1.image = [[UIImage sourceImageNamed:@"tab_account"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem0.selectedImage = [[UIImage sourceImageNamed:@"tab_home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem1.selectedImage = [[UIImage sourceImageNamed:@"tab_account_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}


@end
