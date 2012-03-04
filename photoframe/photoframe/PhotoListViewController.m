//
//  PhotoListViewController.m
//  photoframe
//
//  Created by jinwoo choi on 12. 1. 31..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "PhotoListViewController.h"

@implementation PhotoListViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"PhotoListViewController viewWillAppear");
        CGSize size = CGSizeMake(320, 280); // size of view in popover
        self.contentSizeForViewInPopover = size;
        
        // Custom initialization
    }
    return self;
}
 

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    [super loadView];
    [self.view setFrame:[[UIScreen mainScreen] bounds]];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    NSLog(@"PhotoListViewController height : %f", self.view.frame.size.height);
}

- (CGFloat)getContentHeight:(UIView *)scrollView
{
    CGFloat scrollViewHeight = 0.0f;
    for (UIView* view in scrollView.subviews)
    {
        if (!view.hidden)
        {
            CGFloat y = view.frame.origin.y;
            CGFloat h = view.frame.size.height;
            if (y + h > scrollViewHeight)
            {
                scrollViewHeight = h + y;
                
            }
        }
    }
    NSLog(@"scrollViewHeight : %f", scrollViewHeight );
    return scrollViewHeight;
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect appFrame = [[UIScreen mainScreen] bounds];
    
    float width = 70.0;
    float height = 70.0;
    int countPerScreen = appFrame.size.width / width;
    float stepWidth = ( appFrame.size.width ) / countPerScreen;
    
    NSLog(@"%d %f", countPerScreen, stepWidth );
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [scrollView setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth]; 
    [self.view addSubview:scrollView];
    
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 800)];
    [scrollView addSubview:contentView];
    
    
    for( int i=0; i<100; i++ ){
        int col = i%countPerScreen;
        int row = i/countPerScreen;
        float x = col * ( stepWidth ) + 5;
        float y = row * ( height + 10 ) + 5;
        //NSLog(@"%d %d, %f %f", col, row, x, y );
        PhotoItemView *photoItem = [[PhotoItemView alloc] initWithFrame:CGRectMake(x, y, width, height)];
        [photoItem setName:[NSString stringWithFormat:@"%d 번째", i]];
        [contentView addSubview:photoItem];
    }
    
    NSLog(@"size : %f", [self getContentHeight:contentView] );
    
//    [scrollView setContentSize:CGSizeMake(320, 800)];
    
    [scrollView setContentSize:CGSizeMake(320, [self getContentHeight:contentView])];
}


- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"PhotoListViewController viewWillAppear");
//    CGSize size = CGSizeMake(320, 480); // size of view in popover
//    self.contentSizeForViewInPopover = size;
    
    [super viewWillAppear:animated];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;//(interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
