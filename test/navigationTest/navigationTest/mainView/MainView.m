//
//  MainView.m
//  navigationTest
//
//  Created by jinwoo choi on 12. 1. 29..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"

@implementation MainView

@synthesize btnMove;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundColor:[UIColor redColor]];
        
        btnMove = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnMove setFrame:CGRectMake(0, 0, 100, 50)];
        [btnMove setTitle:@"gogo" forState:UIControlStateNormal];
        //[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
        [self addSubview:btnMove];
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


@end
