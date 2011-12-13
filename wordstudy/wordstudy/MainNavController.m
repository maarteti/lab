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


@synthesize dataSource;

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
    
    sBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    sBar.delegate = self;
    [contentView addSubview:sBar];
    
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, 320, 420) style:UITableViewStylePlain];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [contentView addSubview:myTableView];
    
    //initialize the two arrays; dataSource will be initialized and populated by appDelegate
    searchedData = [[NSMutableArray alloc]init];
    tableData = [[NSMutableArray alloc]init];
    [tableData addObjectsFromArray:dataSource];//on launch it should display all the records 
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
    NSDictionary *dictionary = [_parser objectWithString:test];
    NSLog(@"%@", [dictionary objectForKey:@"test"]);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];

    return cell;
}


//----

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
    // only show the status bar’s cancel button while in edit mode
    sBar.showsCancelButton = YES;
    sBar.autocorrectionType = UITextAutocorrectionTypeNo;
    // flush the previous search content
    [tableData removeAllObjects];
}
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar
{
    sBar.showsCancelButton = NO;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [tableData removeAllObjects];// remove all data that belongs to previous search
    
    if([searchText isEqualToString:@""] || searchText==nil){
        [myTableView reloadData];
        return;
    }
    NSInteger counter = 0;
    for(NSString *name in dataSource)
    {
        NSRange r = [name rangeOfString:searchText];
        if(r.location != NSNotFound)
        {
            if(r.location== 0)//that is we are checking only the start of the names.
            {
                [tableData addObject:name];
            }
        }
        counter++;
    }
    [myTableView reloadData];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    // if a valid search was entered but the user wanted to cancel, bring back the main list content
    [tableData removeAllObjects];
    [tableData addObjectsFromArray:dataSource];
    @try{
        [myTableView reloadData];
    }
    @catch(NSException *e){
    }
    [sBar resignFirstResponder];
    sBar.text = @"";
}
// called when Search (in our case “Done”) button pressed
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
}

@end
