//
//  maartViewController.h
//  flickrslide
//
//  Created by jinwoo choi on 12. 1. 10..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObjectiveFlickr.h"

@interface maartViewController : UIViewController <OFFlickrAPIRequestDelegate> {
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIButton *btnView;
}

- (IBAction) btnClick1;

@end
