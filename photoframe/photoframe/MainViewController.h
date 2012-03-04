//
//  MainViewController.h
//  photoframe
//
//  Created by jinwoo choi on 12. 1. 31..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoListViewController.h"

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UINavigationBarDelegate, UINavigationControllerDelegate> {
    UITableView *picTableView;
    PhotoListViewController *photoListViewController;
}

@end
