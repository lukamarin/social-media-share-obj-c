//
//  AppDelegate.h
//  SocialMedia
//
//  Created by Jingwei Huang on 24/05/13.
//  Copyright (c) 2013 Jingwei Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@class MainViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    MainViewController *controller;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MainViewController *controller;
@property (strong, nonatomic) UINavigationController *navigationController;

@end
