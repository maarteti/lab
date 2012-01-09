//
//  maartViewController.m
//  flickrslide
//
//  Created by jinwoo choi on 12. 1. 10..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "maartViewController.h"

@implementation maartViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    float width = 70.0;
    float height = 70.0;
    int colCount = 4;
    
    
    
    
    for( int i=0; i<50; i++ ){

        NSString *myurl = [NSString stringWithFormat:@"http://icon.daumcdn.net/w/c/12/01/71862509174011319.jpeg"];
        
        NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:myurl]];
        UIImage *myimage = [[UIImage alloc] initWithData:imageData];
        
        UIImageView *imgView = [[UIImageView alloc] initWithImage:myimage];
        
        [imgView setFrame:CGRectMake(0.0, 0.0, width, height)];
        
        int col = i % colCount;
        int row = floor(i / colCount);
        
        [imgView setCenter:CGPointMake(col * (width+5) + width/2, row * (height+5) + height/2)];
        
        [scrollView addSubview:imgView];
        
                    
        
    }
    
    scrollView.contentSize = CGSizeMake(320.0, ceil(50/colCount)*(height+5) + height);
    
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
