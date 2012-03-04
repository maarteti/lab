//
//  MainViewController.m
//  navigationTest
//
//  Created by jinwoo choi on 12. 1. 29..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "SecondView.h"

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        MainView *view = [[MainView alloc] initWithFrame:CGRectMake(0, 0, 220, 460)];
        self.view = view;
        
        [view.btnMove addTarget:self action:@selector(handleMoveNextPage) forControlEvents:UIControlEventTouchDown];
        
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"test" style:UIBarButtonItemStylePlain target:self action:@selector(handleMoveNextPage)];
        
        [self.navigationItem setRightBarButtonItem:item];

        self.title = @"타이틀";
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
/*
- (void)loadView
{
    NSLog(@"loadView");
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

- (void)handleMoveNextPage
{
    SecondView *secView = [[SecondView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    UIViewController *testViewCtrl = [[UIViewController alloc] init];
    testViewCtrl.view = secView;
    
    [self.navigationController pushViewController:testViewCtrl animated:YES];
}

@end
