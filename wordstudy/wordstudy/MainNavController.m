//
//  MainNavController.m
//  wordstudy
//
//  Created by jinwoo choi on 11. 12. 10..
//  Copyright (c) 2011년 __MyCompanyName__. All rights reserved.
//

#import "MainNavController.h"
#import "SBJson.h"

@implementation MainNavController
//
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

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
    UIView *contentView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [contentView setBackgroundColor:[UIColor redColor]];
    
    [self setView:contentView];
    [self setTitle:@"mainview"];
    
    
    // add button
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(0, 0, 100, 40)];
    [btn setCenter:CGPointMake(50, 150)];
    [btn setTitle:@"gogogogo" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(getDicJson) forControlEvents:UIControlEventTouchDown];
    
    [contentView addSubview:btn];    
    
    _parser = [[SBJsonParser alloc] init];
    _writer = [[SBJsonWriter alloc] init];
    _writer.humanReadable = YES;
    _writer.sortKeys = YES;

}


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

- (void)getDicJson
{
    NSString *test = @"{\"test\":1, \"test2\":2}";
    id object = [_parser objectWithString:test];
    
    NSLog(@"getDicJson");
}

@end
