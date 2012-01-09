//
//  maartViewController.m
//  lotto
//
//  Created by jinwoo choi on 12. 1. 9..
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
    
    srandom(time(NULL));
    
    lblNum1.text = @"1";
    lblNum2.text = @"2";
    lblNum3.text = @"3";
    lblNum4.text = @"4";
    lblNum5.text = @"5";
    lblNum6.text = @"6";
    
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

- (IBAction)generateTouchDown:(id)sender {
    NSMutableArray *lottoList = [[NSMutableArray alloc] init];
    
    for( int i=0; i<45; i++ ){
        [lottoList addObject:[NSString stringWithFormat:@"%d", i+1]];
    }
    
    [self shuffle:lottoList];
    
    lblNum1.text = [NSString stringWithFormat:@"%@", [lottoList objectAtIndex:0]];
    lblNum2.text = [NSString stringWithFormat:@"%@", [lottoList objectAtIndex:1]];
    lblNum3.text = [NSString stringWithFormat:@"%@", [lottoList objectAtIndex:2]];
    lblNum4.text = [NSString stringWithFormat:@"%@", [lottoList objectAtIndex:3]];
    lblNum5.text = [NSString stringWithFormat:@"%@", [lottoList objectAtIndex:4]];
    lblNum6.text = [NSString stringWithFormat:@"%@", [lottoList objectAtIndex:5]];
    
}
     
- (void)shuffle:(NSMutableArray *)array {
    
    NSUInteger count = [array count];
    for( NSUInteger i=0; i<count; i++ ){
        int k = count-i;
        int n = (random() % k)+i;
        [array exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
    
}

- (int)getRandomNumber {
    return 0;    
}

@end
