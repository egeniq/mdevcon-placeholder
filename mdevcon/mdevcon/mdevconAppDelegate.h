//
//  mdevconAppDelegate.h
//  mdevcon
//
//  Created by Ivo Jansch on 9/7/11.
//  Copyright 2011 Egeniq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mdevconAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
