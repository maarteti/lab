//
//  ThumbnailImageView.h
//  imageListTest
//
//  Created by jinwoo choi on 12. 1. 29..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThumbnailImageView : UIView <NSURLConnectionDelegate> {
    NSURLConnection *nsUrlConn;
    NSMutableData *receivedData;
    
    UIImage *image;
    UIImageView *imgView;
    
}

- (id)initWithImageUrl:(NSString *)imageUrl title:(NSString *)imageTitle bounds:(CGRect )viewBounds;

@end
