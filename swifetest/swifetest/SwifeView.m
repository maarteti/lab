//
//  SwifeView.m
//  swifetest
//
//  Created by jinwoo choi on 12. 1. 29..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "SwifeView.h"

@implementation SwifeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    
    UIPanGestureRecognizer *pgr = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];

    [self addGestureRecognizer:pgr];
    
    return self;
}

- (void) moveTo:(CGPoint)destination duration:(float)secs option:(UIViewAnimationOptions)option
{
    [UIView animateWithDuration:secs delay:0.0 options:option
                     animations:^{
                         self.frame = CGRectMake(destination.x,destination.y, self.frame.size.width, self.frame.size.height);
                     }
                     completion:nil];
}

- (void) handleReset
{
    
}

- (void) handlePan:(UIPanGestureRecognizer *)pgr
{
    CGPoint center = pgr.view.center;
    
    if ( pgr.state == UIGestureRecognizerStateBegan && center.x != 160 ){
        [self moveTo:CGPointMake(0, 0) duration:0.5 option:0];
        
    } else if (pgr.state == UIGestureRecognizerStateChanged) {
        CGPoint translation = [pgr translationInView:pgr.view];
        center = CGPointMake(center.x + translation.x, 
                             center.y);
        pgr.view.center = center;
        [pgr setTranslation:CGPointZero inView:pgr.view];
        
    } else if( pgr.state == UIGestureRecognizerStateEnded){
        
        if( center.x < 30 ){
            [self moveTo:CGPointMake(-290, 0) duration:0.3 option:0];
        } else if( center.x > 190 ){
            [self moveTo:CGPointMake(290, 0) duration:0.3 option:0];
        } else {
            [self moveTo:CGPointMake(0, 0) duration:0.3 option:0];
        }
        
    }
    

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
