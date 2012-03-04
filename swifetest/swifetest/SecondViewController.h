//
//  SecondViewController.h
//  swifetest
//
//  Created by jinwoo choi on 12. 1. 28..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate;

@interface SecondViewController : UIViewController {
    id <SecondViewControllerDelegate> __unsafe_unretained delegate;
}

@property (unsafe_unretained) id <SecondViewControllerDelegate> delegate;
- (IBAction)done:(id)sender;
@end

@protocol SecondViewControllerDelegate
- (void)secondViewControllerDidFinish:(SecondViewController *)controller;
@end
