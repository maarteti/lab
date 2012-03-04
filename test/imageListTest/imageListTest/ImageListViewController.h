//
//  ImageListViewController.h
//  imageListTest
//
//  Created by jinwoo choi on 12. 1. 29..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThumbnailImageView.h"

@interface ImageListViewController : UIViewController <UIScrollViewDelegate> {
    UIScrollView *scrollView;
    
}

- (void)tempList;

@end
