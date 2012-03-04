//
//  maartViewController.m
//  swifetest
//
//  Created by jinwoo choi on 12. 1. 28..
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
    
    swifeView = [[SwifeView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    [swifeView setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:swifeView];
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

- (IBAction)moveToSecond
{
    SecondViewController *secondViewCtrl = [[SecondViewController alloc] init];
    secondViewCtrl.delegate = self;
    
    secondViewCtrl.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:secondViewCtrl animated:YES];
    
    NSLog(@"dada");
}

- (void)secondViewControllerDidFinish:(SecondViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
