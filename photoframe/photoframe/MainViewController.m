//
//  MainViewController.m
//  photoframe
//
//  Created by jinwoo choi on 12. 1. 31..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (void)loadView
{
    [super loadView];
    [self.view setFrame:[[UIScreen mainScreen] bounds]];
    //[self.view setAutoresizesSubviews:YES];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - delegate

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"will");
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"did show");
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
    [super viewWillAppear:animated];
    //[[self view] setFrame:[[UIScreen mainScreen] applicationFrame]];
}


#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"사진목록"];
    
    picTableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds]  style:UITableViewStylePlain];
    picTableView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin);
    picTableView.delegate = self;
    picTableView.dataSource = self;
    [self.view addSubview:picTableView];
    
    NSLog(@"viewDidLoad");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    picTableView = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;//(interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"num");
    return 15;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TestCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if( cell == nil ){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"test %d", indexPath.row];
    
    switch( indexPath.row )
    {
        case 0:
            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
            break;
        case 1:
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 2:
            break;
        case 3:
            break;
        default:
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    photoListViewController = [[PhotoListViewController alloc] init];
    
    NSString *rowTitle = [NSString stringWithFormat:@"%d번 Row", indexPath.row];
    photoListViewController.title = rowTitle;
        
    [self.navigationController pushViewController:photoListViewController animated:YES];
}



@end
