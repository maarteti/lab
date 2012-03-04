//
//  PhotoItemView.m
//  photoframe
//
//  Created by jinwoo choi on 12. 2. 7..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "PhotoItemView.h"

@implementation PhotoItemView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UIImage *image = [[UIImage imageNamed:@"bgGalleryBox.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        [imageView setFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [self addSubview:imageView];
        
        //UIImage *image [[UIImage alloc] ini
        
        
        lbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, frame.size.width- 20, frame.size.height-20)];
        [lbl setText:@"aaa 190283 01283 098120983 123890"];
        [lbl setLineBreakMode:UILineBreakModeTailTruncation];
        [self addSubview:lbl];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)setName:(NSString *)value
{
    [lbl setText:value];
}

@end
