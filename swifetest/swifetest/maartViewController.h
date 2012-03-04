//
//  maartViewController.h
//  swifetest
//
//  Created by jinwoo choi on 12. 1. 28..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "SwifeView.h"

@interface maartViewController : UIViewController <SecondViewControllerDelegate> {
    IBOutlet UIButton *btnGogo;
    SwifeView *swifeView;
}

- (IBAction) moveToSecond;

@end
