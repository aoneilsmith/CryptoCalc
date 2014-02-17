//
//  CryptoCalcAppDelegate.h
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CryptoCalcAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
