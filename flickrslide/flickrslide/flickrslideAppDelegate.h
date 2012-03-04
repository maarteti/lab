//
//  maartAppDelegate.h
//  flickrslide
//
//  Created by jinwoo choi on 12. 1. 10..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObjectiveFlickr.h"

@interface flickrslideAppDelegate : UIResponder <UIApplicationDelegate, 
OFFlickrAPIRequestDelegate> 
{
    OFFlickrAPIContext *flickrContext;
    OFFlickrAPIRequest *flickrRequest;
}

+ (flickrslideAppDelegate *)sharedDelegate;

@property (strong, nonatomic) UIWindow *window;

@end
