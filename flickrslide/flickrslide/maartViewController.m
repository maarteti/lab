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
    

    

	// Do any additional setup after loading the view, typically from a nib.
}

/*
 
 "_text" = "\n\n";
 photos =     {
 "_text" = "\n\t\n";
 page = 1;
 pages = 1000;
 perpage = 1;
 photo =         (
 {
 farm = 8;
 id = 6733603773;
 isfamily = 0;
 isfriend = 0;
 ispublic = 1;
 owner = "9791405@N07";
 secret = ded419b8d1;
 server = 7148;
 title = "D7 TIRE BARN MERRILLVILLE IN09";
 }
 );
 total = 1000;
 };
 stat = ok;
 }
*/



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

- (IBAction) btnClick1
{
    //[[maartAppDelegate sharedDelegate].request callAPIMethodWithGET:@"flickr.photos.getRecent" arguments:[NSDictionary dictionaryWithObjectsAndKeys:@"10", @"per_page", nil]];
    
}

- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest didCompleteWithResponse:(NSDictionary *)inResponseDictionary
{
    NSLog(@"%@", [inResponseDictionary valueForKeyPath:@"photos"]);
    NSLog(@"%d", inResponseDictionary.count);
    
    //    for( int i=0, l=inResponseDictionary.count; i<l; i++ ){
    //        NSString *photoID = [[inResponseDictionary valueForKeyPath:@"photoid"] textContent];  
    //    }
    
    //    float width = 70.0;
    //    float height = 70.0;
    //    int colCount = 4;
    //    for( int i=0; i<5; i++ ){
    
    //        NSString *myurl = [NSString stringWithFormat:@"http://icon.daumcdn.net/w/c/12/01/71862509174011319.jpeg"];
    //        
    //        NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:myurl]];
    //        UIImage *myimage = [[UIImage alloc] initWithData:imageData];
    //        
    //        UIImageView *imgView = [[UIImageView alloc] initWithImage:myimage];
    //        
    //        [imgView setFrame:CGRectMake(0.0, 0.0, width, height)];
    //        
    //        int col = i % colCount;
    //        int row = floor(i / colCount);
    //        
    //        [imgView setCenter:CGPointMake(col * (width+5) + width/2, row * (height+5) + height/2)];
    //        
    //        [scrollView addSubview:imgView];
    
    
    
    //    }
    //    scrollView.contentSize = CGSizeMake(320.0, ceil(50/colCount)*(height+5) + height);
    
    
}

- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest didFailWithError:(NSError *)inError
{
    NSLog(@"error");
    
}

- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest imageUploadSentBytes:(NSUInteger)inSentBytes totalBytes:(NSUInteger)inTotalBytes
{
    NSLog(@"image upload");
    
}


@end
