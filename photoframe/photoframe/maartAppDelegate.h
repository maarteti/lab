//
//  maartAppDelegate.h
//  photoframe
//
//  Created by jinwoo choi on 12. 1. 31..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
#import "RootViewController.h"

@interface maartAppDelegate : UIResponder <UIApplicationDelegate> {
    MainViewController *mainViewController;
    RootViewController *rootViewController;
    UINavigationController *naviController;
    
}

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
