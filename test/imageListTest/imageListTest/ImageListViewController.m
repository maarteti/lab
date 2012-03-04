//
//  ImageListViewController.m
//  imageListTest
//
//  Created by jinwoo choi on 12. 1. 29..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "ImageListViewController.h"

@implementation ImageListViewController

- (id)init
{
    self = [super init];
    if( self ){
        NSLog(@"initWithNibName");
        
        self.title = @"이미지 목록";
        
        scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        //        scrollView.autoresizesSubviews = YES;
        scrollView.contentSize = CGSizeMake(320, 900);
        
        
        
        
        //        UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 800, 100, 50)];
        //        [lbl setText:@"test"];
        //        [scrollView addSubview:lbl];
        [self tempList];
        
        [self.view addSubview:scrollView];
        
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

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView
 {
 }
 */

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 }
 */

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)tempList
{
    
    CGRect bounds = [[UIScreen mainScreen] bounds];
    int column = 4;
    
    CGFloat width = bounds.size.width / column;
    CGFloat height = 60.0;
    
    for( int i=0; i<10; i++ ){
        
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [btn setTitle:[NSString stringWithFormat:@"item %d", i] forState:UIControlStateNormal];
//        CGFloat x = (i%5)*width;
//        CGFloat y = round(i/5)*(height+10);
//        NSLog(@"%f : %f", x, y);
//        [btn setFrame:CGRectMake(x, y, width, height)];
        CGFloat x = (i%column)*width;
        CGFloat y = round(i/column)*(height+10);
        ThumbnailImageView *img = [[ThumbnailImageView alloc] initWithImageUrl:@"http://edumobile.org/iphone/wp-content/uploads/2010/03/3rd_ib-1-300x160.jpg" title:@"img title" bounds:CGRectMake(x, y, width, height)];
        
//        NSLog(@"%f : %f", x, y);
//        [img setFrame:];
        [img setCenter:CGPointMake(x+width/2, y+height/2)];
        
        [scrollView addSubview:img];
    }
}

@end
