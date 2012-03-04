//
//  MainViewController.h
//  tableTest
//
//  Created by jinwoo choi on 12. 1. 29..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    UITableView *testTableView;
}

@end
