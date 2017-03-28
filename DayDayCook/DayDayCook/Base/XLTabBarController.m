
//
//  XLTabBarController.m
//  Two-fresh
//
//  Created by jiang on 2017/3/20.
//  Copyright © 2017年 蒋玉顺. All rights reserved.
//

#import "XLTabBarController.h"

#import "HomeViewController.h"
#import "RecipeViewController.h"
#import "FindViewController.h"
#import "MyViewController.h"

#import "XLNavigationController.h"

@implementation XLTabBarController
- (void)viewDidLoad {
    
    [super viewDidLoad];

    
    [self setUpAllChildViewController];
    
    
}
// 添加所有子控制器
- (void)setUpAllChildViewController
{
    // 首页
    HomeViewController *home = [[HomeViewController  alloc] init];
    home.title = @"首页";
    [self setUpOneChildViewController:home  imageName:@"home" selImageName:@"homeSelect"];
    
    // 食谱
    RecipeViewController *recipe = [[RecipeViewController alloc] init];
    recipe.title = @"食谱";
    [self setUpOneChildViewController:recipe  imageName:@"sortIconNormal" selImageName:@"sortIconSelect"];
    
    // 发现
    FindViewController *discover = [[FindViewController alloc] init];
    discover.title = @"发现";
    [self setUpOneChildViewController:discover  imageName:@"discover" selImageName:@"discoverSelect"];
    
    
    // 我的
    MyViewController *my = [[MyViewController alloc] init];
    my.title = @"我的";
    [self setUpOneChildViewController:my  imageName:@"myFresh" selImageName:@"myFreshSelect"];
    
}

// 添加一个控制器的属性
- (void)setUpOneChildViewController:(UIViewController *)vc imageName:(NSString *)imageName selImageName:(NSString *)selImageName
{
//    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selImage = [UIImage imageNamed:selImageName];
    if (DEVICE_SYSTEM_VERSION>=7) {
        selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    vc.tabBarItem.selectedImage = selImage;
    
    
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:UICOLOR_HEX(0x383736), NSForegroundColorAttributeName, [UIFont systemFontOfSize:12], NSFontAttributeName, nil] forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:UICOLOR_HEX(0x383736), NSForegroundColorAttributeName, [UIFont systemFontOfSize:12], NSFontAttributeName, nil] forState:UIControlStateSelected];
    
    XLNavigationController *nav = [[XLNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
    
    
}


@end
