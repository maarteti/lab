//
//  MainNavController.h
//  wordstudy
//
//  Created by jinwoo choi on 11. 12. 10..
//  Copyright (c) 2011년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SBJsonParser;
@class SBJsonWriter;

@interface MainNavController : UIViewController <UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate> {
    SBJsonParser *_parser;
    SBJsonWriter *_writer;
    
    UISearchBar *sBar;    
    UITableView *myTableView;
    
    NSMutableArray *dataSource; //will be storing all the data
    NSMutableArray *tableData;//will be storing data that will be displayed in table
    NSMutableArray *searchedData;//will be storing data matching with the search string

    
}

@property(nonatomic,retain)NSMutableArray *dataSource;

@end
